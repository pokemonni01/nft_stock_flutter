import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

class NftAssetPageArgument {

  const NftAssetPageArgument({required this.ownerAddress, this.nftList});

  final String ownerAddress;
  final List<NftAsset>? nftList;
}