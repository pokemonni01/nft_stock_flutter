import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'nft_asset_page_argument.dart';

class NftAssetPage extends StatelessWidget {
  const NftAssetPage({Key? key, required this.nftAssetPageArgument})
      : super(key: key);

  final NftAssetPageArgument nftAssetPageArgument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Text("Owner Address: ${nftAssetPageArgument.ownerAddress}"),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: nftAssetPageArgument.nftList?.length ?? 0,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const NftAssetWidget();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NftAssetWidget extends StatelessWidget {
  const NftAssetWidget({Key? key}) : super(key: key);

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
          NftAssetImageWidget(),
          NftAssetPriceWidget()
        ],
      ),
    );
  }
}

class NftAssetImageWidget extends StatelessWidget {
  const NftAssetImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
              "https://lh3.googleusercontent.com/vpRsADUw7wDLsAw7AdEXPu9EGEJ2P-bNxXGm_eTDpXALKeMsSIoFsVqDE3r3Oc7KbsvgjIeau50wR-eM0jMaYe17VF-VHyq0TQjG=w335")),
    );
  }
}

class NftAssetPriceWidget extends StatelessWidget {
  const NftAssetPriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Panda Dynasty"), Text("Best Offer")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Panda #5465"), Text("0.052")
              ],
            )
          ],
        ),
      ),
    );
  }
}
