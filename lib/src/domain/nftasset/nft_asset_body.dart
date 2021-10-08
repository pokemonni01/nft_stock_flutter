import 'package:nft_stock/src/data/nftasset/remote/request/nft_asset_request.dart';

class NftAssetBody {
  NftAssetBody({required this.ownerAddress, this.orderDirection = "desc", this.offset = 0, this.limit = 20});

  String ownerAddress;
  String orderDirection;
  int offset;
  int limit;
}

extension RequestMapping on NftAssetBody {
  NftAssetRequest toRequestModel() {
    return NftAssetRequest(
        ownerAddress: ownerAddress,
        orderDirection: orderDirection,
        offset: offset,
        limit: limit
    );
  }
}