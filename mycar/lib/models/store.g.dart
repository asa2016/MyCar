// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) {
  return Store(
    id: json['id'] as int,
    storeName: json['store_name'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    //social: json['social'] == null ? null : Social.fromJson(json['social'] as Map<String, dynamic>),
    phone: json['phone'] as String,
    showEmail: json['show_email'] as bool,
    //address: json['address'] == null ? null : Address.fromJson(json['address'] as Map<String, dynamic>),
    location: json['location'] as String,
    banner: json['banner'] as String,
    bannerId: json['banner_id'] as int,
    gravatar: json['gravatar'] as String,
    gravatarId: json['gravatar_id'] as int,
    shopUrl: json['shop_url'] as String,
    productsPerPage: json['products_per_page'] as int,
    showMoreProductTab: json['show_more_product_tab'] as bool,
    tocEnabled: json['toc_enabled'] as bool,
    storeToc: json['store_toc'] as String,
    featured: json['featured'] as bool,
    //rating: json['rating'] == null ? null : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    enabled: json['enabled'] as bool,
    registered: json['registered'] as String,
    payment: json['payment'] as String,
    trusted: json['trusted'] as bool,
  );
}

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'store_name': instance.storeName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'social': instance.social,
      'phone': instance.phone,
      'show_email': instance.showEmail,
      'address': instance.address,
      'location': instance.location,
      'banner': instance.banner,
      'banner_id': instance.bannerId,
      'gravatar': instance.gravatar,
      'gravatar_id': instance.gravatarId,
      'shop_url': instance.shopUrl,
      'products_per_page': instance.productsPerPage,
      'show_more_product_tab': instance.showMoreProductTab,
      'toc_enabled': instance.tocEnabled,
      'store_toc': instance.storeToc,
      'featured': instance.featured,
      'rating': instance.rating,
      'enabled': instance.enabled,
      'registered': instance.registered,
      'payment': instance.payment,
      'trusted': instance.trusted,
    };

Social _$SocialFromJson(Map<String, dynamic> json) {
  return Social(
    fb: json['fb'] as String,
    youtube: json['youtube'] as String,
    twitter: json['twitter'] as String,
    linkedin: json['linkedin'] as String,
    pinterest: json['pinterest'] as String,
    instagram: json['instagram'] as String,
  );
}

Map<String, dynamic> _$SocialToJson(Social instance) => <String, dynamic>{
      'fb': instance.fb,
      'youtube': instance.youtube,
      'twitter': instance.twitter,
      'linkedin': instance.linkedin,
      'pinterest': instance.pinterest,
      'instagram': instance.instagram,
    };

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    street1: json['street_1'] as String,
    street2: json['street_2'] as String,
    city: json['city'] as String,
    zip: json['zip'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street_1': instance.street1,
      'street_2': instance.street2,
      'city': instance.city,
      'zip': instance.zip,
      'state': instance.state,
      'country': instance.country,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return Rating(
    rating: json['rating'] as String,
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'rating': instance.rating,
      'count': instance.count,
    };
