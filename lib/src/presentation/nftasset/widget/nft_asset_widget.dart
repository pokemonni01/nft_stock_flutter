import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

import 'nft_asset_image_widget.dart';
import 'nft_asset_price_widget.dart';

class NftAssetWidget extends StatelessWidget {

  const NftAssetWidget({Key? key, required this.nftAsset}) : super(key: key);

  final NftAsset? nftAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromRGBO(229, 232, 235, 100))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NftAssetImageWidget(imageUrl: nftAsset?.imageUrl ?? ""),
          NftAssetPriceWidget(nftAsset: nftAsset,)
        ],
      ),
    );
  }
}