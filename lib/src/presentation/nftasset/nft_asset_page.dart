import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nft_stock/src/common/constants.dart';
import 'package:nft_stock/src/presentation/nftasset/nft_asset_controller.dart';
import 'package:nft_stock/src/presentation/nftasset/widget/nft_asset_widget.dart';

import 'nft_asset_page_argument.dart';

class NftAssetPage extends StatelessWidget {
  const NftAssetPage({Key? key, required this.nftAssetPageArgument})
      : super(key: key);

  final NftAssetPageArgument nftAssetPageArgument;

  @override
  Widget build(BuildContext context) {

    final NftAssetController controller = Get.find();
    controller.init(nftAssetPageArgument);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("NFT Asset"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Obx(() => Column(
            children: [
              Text("Owner Address: ${controller.ownerAddress}"),
              const SizedBox(height: defaultSize,),
              Expanded(
                child: ListView.builder(
                    itemCount: nftAssetPageArgument.nftList?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return NftAssetWidget(nftAsset: nftAssetPageArgument.nftList?.elementAt(index));
                    }),
              )
            ],
          )),
        ),
      ),
    );
  }
}
