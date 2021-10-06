class NftAsset {

  const NftAsset(
      {required this.imageUrl,
      required this.collectionName,
      required this.isCollectionVerified,
      required this.name,
      required this.price,
      required this.cryptoCurrency});

  final String imageUrl;
  final String collectionName;
  final bool isCollectionVerified;
  final String name;
  final String price;
  final String cryptoCurrency;
}
