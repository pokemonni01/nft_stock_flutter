import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nft_stock/src/common/locator.dart';
import 'package:nft_stock/src/domain/nftasset/get_nft_asset_use_case.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';
import 'package:nft_stock/src/presentation/nftasset/nft_asset_page.dart';
import 'package:nft_stock/src/presentation/nftasset/nft_asset_page_argument.dart';

class HomePage extends StatelessWidget {
  static const route = "home";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("NFT Stock", style: TextStyle(color: Color.fromRGBO(4, 7, 29, 100), fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Put address here.")),
            const SizedBox(
              width: double.infinity,
              height: 16,
            ),
            InkWell(
              onTap: () async {
                List<NftAsset> response =
                    await Get.find<GetNftAssetUseCase>().invoke("ownerAddress");
                print(response);
                Get.to(NftAssetPage(
                    nftAssetPageArgument: NftAssetPageArgument(
                        ownerAddress: "ownerAddress ", nftList: response)));
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: const Icon(
                  Icons.navigate_next,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
