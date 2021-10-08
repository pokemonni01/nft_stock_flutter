import 'dart:convert';
import 'dart:io';

import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:nft_stock/src/common/constants.dart';
import 'package:nft_stock/src/data/nftasset/remote/request/nft_asset_request.dart';
import 'package:nft_stock/src/data/nftasset/remote/response/nft_asset_response.dart';

abstract class OpenSeaApi {
  Future<NftAssetResponse> getAssets(NftAssetRequest request);
}

class OpenSeaApiImpl extends OpenSeaApi {
  final InterceptedClient _client;

  OpenSeaApiImpl(this._client);

  @override
  Future<NftAssetResponse> getAssets(NftAssetRequest request) async {
    NftAssetResponse responseModel;
    try {
      final queryParameters = {
        'owner': request.ownerAddress,
        'order_direction': request.orderDirection,
        'offset': request.offset.toString(),
        'limit': request.limit.toString()
      };
      var url = Uri.https(apiUrl, apiUrlAssetsPath, queryParameters);
      final response = await _client.get(url);
      if (response.statusCode == 200) {
        responseModel = NftAssetResponse.fromJson(jsonDecode(response.body));
      } else {
        return Future.error(
          "Error while fetching.",
          StackTrace.fromString(response.body),
        );
      }
    } on SocketException {
      return Future.error('No Internet connection 😑');
    } on FormatException {
      return Future.error('Bad response format 👎');
    } on Exception {
      return Future.error('Unexpected error 😢');
    }
    return responseModel;
  }
}
