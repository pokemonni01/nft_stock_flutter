import 'package:nft_stock/src/data/nftasset/remote/opensea_api.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

abstract class NftAssetRepository {
  Future<List<NftAsset>> getNftAsset(String ownerAddress);
}

class NftAssetRepositoryImpl extends NftAssetRepository {
  OpenSeaApi openSeaApi;

  NftAssetRepositoryImpl({required this.openSeaApi});

  @override
  Future<List<NftAsset>> getNftAsset(String ownerAddress) async {
    var response = await openSeaApi.getAssets().then((value) => value
        .nftAssetList
        ?.map((entry) => NftAsset(
            imageUrl: entry.imageUrl,
            name: entry.name,
            collection: entry.collection.toDomainModel()))
        .toList());
    return response ?? [];
  }
}
