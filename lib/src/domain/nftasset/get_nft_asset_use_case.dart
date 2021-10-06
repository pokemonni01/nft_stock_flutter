import 'package:nft_stock/src/data/nftasset/nft_asset_repository.dart';

import 'nft_asset.dart';

class GetNftAssetUseCase {
  NftAssetRepository nftAssetRepository;

  GetNftAssetUseCase({required this.nftAssetRepository});

  Future<List<NftAsset>> invoke(String ownerAddress) async {
    return list;
  }

  var list = [
    NftAsset(
        imageUrl:
            "https://lh3.googleusercontent.com/vpRsADUw7wDLsAw7AdEXPu9EGEJ2P-bNxXGm_eTDpXALKeMsSIoFsVqDE3r3Oc7KbsvgjIeau50wR-eM0jMaYe17VF-VHyq0TQjG=w335",
        collectionName: "Panda Zing",
        isCollectionVerified: true,
        name: "Panda Zing #1",
        price: "0.05",
        cryptoCurrency: "weth"),
    NftAsset(
        imageUrl:
        "https://lh3.googleusercontent.com/vpRsADUw7wDLsAw7AdEXPu9EGEJ2P-bNxXGm_eTDpXALKeMsSIoFsVqDE3r3Oc7KbsvgjIeau50wR-eM0jMaYe17VF-VHyq0TQjG=w335",
        collectionName: "Panda Zing",
        isCollectionVerified: false,
        name: "Panda Zing #2",
        price: "0.15",
        cryptoCurrency: "weth"),
    NftAsset(
        imageUrl:
        "https://lh3.googleusercontent.com/vpRsADUw7wDLsAw7AdEXPu9EGEJ2P-bNxXGm_eTDpXALKeMsSIoFsVqDE3r3Oc7KbsvgjIeau50wR-eM0jMaYe17VF-VHyq0TQjG=w335",
        collectionName: "Panda Zing",
        isCollectionVerified: true,
        name: "Panda Zing #3",
        price: "0.25",
        cryptoCurrency: "eth"),
    NftAsset(
        imageUrl:
        "https://lh3.googleusercontent.com/vpRsADUw7wDLsAw7AdEXPu9EGEJ2P-bNxXGm_eTDpXALKeMsSIoFsVqDE3r3Oc7KbsvgjIeau50wR-eM0jMaYe17VF-VHyq0TQjG=w335",
        collectionName: "Panda Zing",
        isCollectionVerified: false,
        name: "Panda Zing #4",
        price: "0.35",
        cryptoCurrency: "eth"),
  ];
}
