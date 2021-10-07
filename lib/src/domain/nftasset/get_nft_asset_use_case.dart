import 'package:nft_stock/src/data/nftasset/nft_asset_repository.dart';

import 'nft_asset.dart';

class GetNftAssetUseCase {
  NftAssetRepository nftAssetRepository;

  GetNftAssetUseCase({required this.nftAssetRepository});

  Future<List<NftAsset>> invoke(String ownerAddress) async {
    return nftAssetRepository.getNftAsset(ownerAddress);
  }
}
