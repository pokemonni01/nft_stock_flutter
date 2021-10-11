import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';
import 'package:nft_stock/src/presentation/home/widget/home_nft_asset_image_widget.dart';

class HomeNftAssetWidget extends StatelessWidget {
  const HomeNftAssetWidget({Key? key, required this.nftAsset})
      : super(key: key);

  final NftAsset? nftAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(4, 17, 29, 0.25),
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(10, 0), // changes position of shadow
            ),
          ],
          border: Border.all(color: const Color.fromRGBO(229, 232, 235, 100))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeNftAssetImageWidget(imageUrl: nftAsset?.imageUrl ?? ""),
        ],
      ),
    );
  }
}
