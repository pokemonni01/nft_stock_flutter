import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nft_stock/src/common/app_icon.dart';
import 'package:nft_stock/src/common/constants.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

class NftCollectionNameWidget extends StatelessWidget {

  final NftAssetCollection? collection;

  const NftCollectionNameWidget(
      {Key? key,
        required this.collection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(collection?.name ?? ""),
        if (collection?.safelistRequestStatus == "verified")
          SvgPicture.asset(
            AppIcon.verifiedCollection,
            semanticsLabel: "iconVerifiedCollection",
            width: defaultSize,
            height: defaultSize,
          )
      ],
    );
  }
}