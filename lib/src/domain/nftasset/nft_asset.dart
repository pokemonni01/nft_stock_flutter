class NftAsset {

  const NftAsset({required this.imageUrl,
    required this.name,
    required this.collection});

  final String imageUrl;
  final String name;
  final NftAssetCollection? collection;
}

class NftAssetCollection {

  const NftAssetCollection({required this.externalUrl, required this.safelistRequestStatus, required this.name});

  final String externalUrl;
  final String safelistRequestStatus;
  final String name;
}

class NftAssetPaymentToken {

  const NftAssetPaymentToken({required this.id,
    required this.symbol,
    required this.address,
    required this.imageUrl,
    required this.name});

  final String id;
  final String symbol;
  final String address;
  final String imageUrl;
  final String name;
}
