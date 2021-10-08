import 'package:nft_stock/src/data/nftasset/nft_asset_repository.dart';

import 'nft_asset.dart';
import 'nft_asset_body.dart';

class GetNftAssetUseCase {
  NftAssetRepository nftAssetRepository;

  GetNftAssetUseCase({required this.nftAssetRepository});

  Future<List<NftAsset>> invoke(NftAssetBody body) async {
    return nftAssetRepository.getNftAsset(body);
  }
}
