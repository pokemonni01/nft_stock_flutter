class NftAssetRequest {

  NftAssetRequest({required this.ownerAddress, this.orderDirection = "desc", this.offset = 0, this.limit = 20});

  String ownerAddress;
  String orderDirection;
  int offset;
  int limit;
}