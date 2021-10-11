import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:nft_stock/src/data/nftasset/nft_asset_repository.dart';
import 'package:nft_stock/src/data/nftasset/remote/opensea_api.dart';
import 'package:nft_stock/src/domain/nftasset/get_nft_asset_use_case.dart';
import 'package:nft_stock/src/presentation/home/home_controller.dart';
import 'package:nft_stock/src/presentation/nftasset/nft_asset_controller.dart';
import 'package:nft_stock/src/presentation/nftasset/nft_asset_state.dart';

import 'logger_interceptor.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Api Client
  Get.put<InterceptedClient>(InterceptedClient.build(interceptors: [LoggerInterceptor()]));
  Get.put<OpenSeaApi>(OpenSeaApiImpl(Get.find()));

  // Repository
  Get.put<NftAssetRepository>(NftAssetRepositoryImpl(openSeaApi: Get.find()));

  // Use Case
  Get.put(GetNftAssetUseCase(nftAssetRepository: Get.find()));

  // Controller
  Get.put(NftAssetController());
}