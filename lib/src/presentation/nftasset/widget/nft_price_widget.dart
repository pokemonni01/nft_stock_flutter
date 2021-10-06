import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nft_stock/src/common/constants.dart';

class NftPriceWidget extends StatelessWidget {
  final String price;
  final String cryptoCurrencyIcon;

  const NftPriceWidget(
      {Key? key,
        required this.price,
        required this.cryptoCurrencyIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          cryptoCurrencyIcon,
          semanticsLabel: "crypto currency icon",
          width: defaultSize,
          height: defaultSize,
        ),
        Text(price)
      ],
    );
  }
}