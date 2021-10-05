import 'package:nft_stock/src/remote/opensea_api.dart';

abstract class NftAssetRepository {
  Future<bool> getNftAsset(String ownerAddress);
}

class NftAssetRepositoryImpl extends NftAssetRepository {

  OpenSeaApi openSeaApi;

  NftAssetRepositoryImpl({required this.openSeaApi});

  @override
  Future<bool> getNftAsset(String ownerAddress) async {
    return await openSeaApi.getAssets();
  }

}