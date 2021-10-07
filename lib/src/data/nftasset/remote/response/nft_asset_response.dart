import 'package:json_annotation/json_annotation.dart';
import 'package:nft_stock/src/domain/nftasset/nft_asset.dart';

part 'nft_asset_response.g.dart';

@JsonSerializable()
class NftAssetResponse {
  NftAssetResponse(this.nftAssetList);

  @JsonKey(name: 'assets')
  final List<NftAssetModelResponse>? nftAssetList;

  factory NftAssetResponse.fromJson(Map<String, dynamic> json) =>
      _$NftAssetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NftAssetResponseToJson(this);
}

@JsonSerializable()
class NftAssetModelResponse {
  NftAssetModelResponse(this.imageUrl, this.name, this.collection);

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'collection')
  final NftAssetCollectionResponse collection;

  factory NftAssetModelResponse.fromJson(Map<String, dynamic> json) =>
      _$NftAssetModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NftAssetModelResponseToJson(this);
}

@JsonSerializable()
class NftAssetCollectionResponse {
  NftAssetCollectionResponse(
      this.externalUrl, this.safelistRequestStatus, this.name);

  @JsonKey(name: 'external_url')
  final String? externalUrl;

  @JsonKey(name: 'safelist_request_status')
  final String? safelistRequestStatus;

  @JsonKey(name: 'name')
  final String? name;

  factory NftAssetCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$NftAssetCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NftAssetCollectionResponseToJson(this);

  NftAssetCollection toDomainModel() {
    return NftAssetCollection(
        externalUrl: externalUrl ?? "",
        safelistRequestStatus: safelistRequestStatus ?? "",
        name: name ?? "");
  }
}

@JsonSerializable()
class NftAssetPaymentTokenResponse {
  NftAssetPaymentTokenResponse(
      this.id, this.symbol, this.address, this.imageUrl, this.name);

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'symbol')
  final String symbol;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'name')
  final String name;

  factory NftAssetPaymentTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$NftAssetPaymentTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NftAssetPaymentTokenResponseToJson(this);

  NftAssetPaymentToken toDomainModel() {
    return NftAssetPaymentToken(
        id: id,
        symbol: symbol,
        address: address,
        imageUrl: imageUrl,
        name: name);
  }
}
