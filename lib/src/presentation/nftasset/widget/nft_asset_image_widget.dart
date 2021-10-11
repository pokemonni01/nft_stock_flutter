import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class NftAssetImageWidget extends StatelessWidget {
  const NftAssetImageWidget({Key? key, required this.imageUrl})
      : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: imageUrl.contains(".svg")
                  ? SvgPicture.network(
                      imageUrl,
                      semanticsLabel: "NFT image",
                    )
                  : Image.network(imageUrl, width: double.infinity,)),
        ),
      ),
    );
  }
}
