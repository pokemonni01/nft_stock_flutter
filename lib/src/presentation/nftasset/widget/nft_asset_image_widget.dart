import 'package:flutter/widgets.dart';

class NftAssetImageWidget extends StatelessWidget {

  const NftAssetImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(imageUrl)),
    );
  }
}