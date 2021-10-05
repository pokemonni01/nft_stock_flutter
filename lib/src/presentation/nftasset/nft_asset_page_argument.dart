class NftAssetPageArgument {

  const NftAssetPageArgument({required this.ownerAddress, this.nftList});

  final String ownerAddress;
  final List<bool>? nftList;
}