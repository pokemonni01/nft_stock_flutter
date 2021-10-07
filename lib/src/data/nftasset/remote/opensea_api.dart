import 'dart:convert';
import 'dart:io';

import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:nft_stock/src/common/constants.dart';
import 'package:nft_stock/src/data/nftasset/remote/response/nft_asset_response.dart';

abstract class OpenSeaApi {
  Future<NftAssetResponse> getAssets();
}

class OpenSeaApiImpl extends OpenSeaApi {
  final InterceptedClient _client;

  OpenSeaApiImpl(this._client);

  @override
  Future<NftAssetResponse> getAssets() async {
    NftAssetResponse responseModel;
    try {
      final queryParameters = {
        'owner': '0xb47449075b1b1780393470c006897212e272d1c0',
        'order_direction': 'desc',
        'offset': '0',
        'limit': '20'
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
