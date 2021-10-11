import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nft_stock/src/domain/nftasset/get_nft_asset_use_case.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset_body.dart';

class HomeController extends GetxController {

  HomeController(this.useCase);

  GetNftAssetUseCase useCase;

  RxBool isLoading = false.obs;
  RxList<NftAsset> nftAssetList = RxList<NftAsset>();

  void getNftAssetList() async {
    isLoading.value = true;
    nftAssetList.addAll(await useCase.invoke(NftAssetBody(ownerAddress: "")));
    isLoading.value = false;
  }

  Future<List<NftAsset>> getNftAssetListByOwnerAddress() async {
    var response = await useCase.invoke(NftAssetBody(ownerAddress: "0xb47449075b1b1780393470c006897212e272d1c0"));
    return response;
  }
}