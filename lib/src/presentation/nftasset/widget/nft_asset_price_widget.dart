import 'package:flutter/widgets.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

import 'nft_collection_name_widget.dart';

class NftAssetPriceWidget extends StatelessWidget {

  const NftAssetPriceWidget({Key? key, required this.nftAsset}) : super(key: key);

  final NftAsset? nftAsset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NftCollectionNameWidget(collection: nftAsset?.collection,),
          Text(nftAsset?.name ?? "")
        ],
      ),
    );
  }
}