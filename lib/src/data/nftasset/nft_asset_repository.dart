import 'package:nft_stock/src/data/nftasset/remote/opensea_api.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset_body.dart';

abstract class NftAssetRepository {
  Future<List<NftAsset>> getNftAsset(NftAssetBody body);
}

class NftAssetRepositoryImpl extends NftAssetRepository {
  OpenSeaApi openSeaApi;

  NftAssetRepositoryImpl({required this.openSeaApi});

  @override
  Future<List<NftAsset>> getNftAsset(NftAssetBody body) async {
    var response = await openSeaApi.getAssets(body.toRequestModel()).then((value) => value
        .nftAssetList
        ?.map((entry) => NftAsset(
            imageUrl: entry.imageUrl,
            name: entry.name,
            collection: entry.collection.toDomainModel()))
        .toList());
    return response ?? [];
  }
}
