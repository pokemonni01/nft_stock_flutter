import 'package:nft_stock/src/data/nftasset/nft_asset_repository.dart';

class GetNftAssetUseCase {

  NftAssetRepository nftAssetRepository;

  GetNftAssetUseCase({required this.nftAssetRepository});

  Future<bool> invoke(String ownerAddress) async {
    return nftAssetRepository.getNftAsset(ownerAddress);
  }
}