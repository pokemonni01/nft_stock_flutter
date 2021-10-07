// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_asset_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftAssetResponse _$NftAssetResponseFromJson(Map<String, dynamic> json) =>
    NftAssetResponse(
      (json['assets'] as List<dynamic>?)
          ?.map(
              (e) => NftAssetModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NftAssetResponseToJson(NftAssetResponse instance) =>
    <String, dynamic>{
      'assets': instance.nftAssetList,
    };

NftAssetModelResponse _$NftAssetModelResponseFromJson(
        Map<String, dynamic> json) =>
    NftAssetModelResponse(
      json['image_url'] as String,
      json['name'] as String,
      NftAssetCollectionResponse.fromJson(
          json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NftAssetModelResponseToJson(
        NftAssetModelResponse instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'name': instance.name,
      'collection': instance.collection,
    };

NftAssetCollectionResponse _$NftAssetCollectionResponseFromJson(
        Map<String, dynamic> json) =>
    NftAssetCollectionResponse(
      json['external_url'] as String?,
      json['safelist_request_status'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$NftAssetCollectionResponseToJson(
        NftAssetCollectionResponse instance) =>
    <String, dynamic>{
      'external_url': instance.externalUrl,
      'safelist_request_status': instance.safelistRequestStatus,
      'name': instance.name,
    };

NftAssetPaymentTokenResponse _$NftAssetPaymentTokenResponseFromJson(
        Map<String, dynamic> json) =>
    NftAssetPaymentTokenResponse(
      json['id'] as String,
      json['symbol'] as String,
      json['address'] as String,
      json['image_url'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$NftAssetPaymentTokenResponseToJson(
        NftAssetPaymentTokenResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'address': instance.address,
      'image_url': instance.imageUrl,
      'name': instance.name,
    };
