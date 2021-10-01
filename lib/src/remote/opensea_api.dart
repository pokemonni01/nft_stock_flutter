import 'dart:io';

import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:nft_stock/src/common/constants.dart';

abstract class OpenSeaApi {
  Future<bool> getAssets();
}

class OpenSeaApiImpl extends OpenSeaApi {
  final InterceptedClient _client;

  OpenSeaApiImpl(this._client);

  @override
  Future<bool> getAssets() async {
    print("getAssets");
    var responseModel;
    try {
      final queryParameters = {
        'owner': '0x6b008e74f2cfc661babba620e319b4778216a8fa',
        'order_direction': 'desc',
        'offset': '0',
        'limit': '20'
      };
      var url = Uri.https(apiUrl, apiUrlAssetsPath, queryParameters);
      final response = await _client.get(url);
      if (response.statusCode == 200) {
        responseModel = true;
      } else {
        return Future.error(
          "Error while fetching.",
          StackTrace.fromString("${response.body}"),
        );
      }
    } on SocketException {
      return Future.error('No Internet connection 😑');
    } on FormatException catch (error) {
      return Future.error('Bad response format 👎');
    } on Exception catch (error) {
      return Future.error('Unexpected error 😢');
    }
    return responseModel;
  }
}
