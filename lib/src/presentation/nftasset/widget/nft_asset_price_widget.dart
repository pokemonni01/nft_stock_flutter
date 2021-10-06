import 'package:flutter/widgets.dart';
import 'package:nft_stock/src/common/app_icon.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

import 'nft_collection_name_widget.dart';
import 'nft_price_widget.dart';

class NftAssetPriceWidget extends StatelessWidget {

  const NftAssetPriceWidget({Key? key, required this.nftAsset}) : super(key: key);

  final NftAsset? nftAsset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NftCollectionNameWidget(collectionName: nftAsset?.collectionName ?? "", isCollectionVerified: nftAsset?.isCollectionVerified ?? false,),
              Text("Best Offer")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(nftAsset?.name ?? ""),
              NftPriceWidget(
                cryptoCurrencyIcon: nftAsset?.cryptoCurrency == "weth" ? AppIcon.weth : AppIcon.eth  ,
                price: nftAsset?.price ?? "0.0",
              )
            ],
          )
        ],
      ),
    );
  }
}