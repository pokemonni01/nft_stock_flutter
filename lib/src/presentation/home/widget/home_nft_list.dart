import 'package:flutter/widgets.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';
import 'package:nft_stock/src/presentation/home/widget/home_nft_asset_widget.dart';

class HomeNftListWidget extends StatelessWidget {

  const HomeNftListWidget({Key? key, required this.nftAssetList}) : super(key: key);

  final List<NftAsset>? nftAssetList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: nftAssetList?.length ?? 0,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return HomeNftAssetWidget(nftAsset: nftAssetList?.elementAt(index));
        });
  }
}
