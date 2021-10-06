import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nft_stock/src/common/app_icon.dart';
import 'package:nft_stock/src/common/constants.dart';

class NftCollectionNameWidget extends StatelessWidget {
  final String collectionName;
  final bool isCollectionVerified;

  const NftCollectionNameWidget(
      {Key? key,
        required this.collectionName,
        required this.isCollectionVerified})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(collectionName),
        if (isCollectionVerified)
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