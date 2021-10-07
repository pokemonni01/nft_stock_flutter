import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';
import 'package:nft_stock/src/presentation/nftasset/nft_asset_page_argument.dart';

import 'nft_asset_state.dart';

class NftAssetController {

  NftAssetController();

  var count = 0.obs;
  Rx<String> ownerAddress = "".obs;
  RxList<NftAsset> nftAsset = <NftAsset>[].obs;

  void init(NftAssetPageArgument argument) {
    // nftAssetState = NftAssetState().obs;
    ownerAddress.value = argument.ownerAddress;
    nftAsset.value = argument.nftList ?? [];
  }

  void updateName(String name) {
    ownerAddress.value = name;
  }

  increment() => count++;
}