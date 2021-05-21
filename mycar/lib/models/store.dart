import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

List<Store> storeListFromJson(String str) => List<Store>.from(json.decode(str).map((x)=>Store.fromJson(x)));

@JsonSerializable()
class Store {
  int id;
  @JsonKey(name: 'store_name')
  String storeName;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  Social social;
  String phone;
  @JsonKey(name: 'show_email')
  bool showEmail;
  Address address;
  String location;
  String banner;
  @JsonKey(name: 'banner_id')
  int bannerId;
  String gravatar;
  @JsonKey(name: 'gravatar_id')
  int gravatarId;
  @JsonKey(name: 'shop_url')
  String shopUrl;
  @JsonKey(name: 'products_per_page')
  int productsPerPage;
  @JsonKey(name: 'show_more_product_tab')
  bool showMoreProductTab;
  @JsonKey(name: 'toc_enabled')
  bool tocEnabled;
  @JsonKey(name: 'store_toc')
  String storeToc;
  bool featured;
  Rating rating;
  bool enabled;
  String registered;
  String payment;
  bool trusted;

  Store(
      {this.id,
      this.storeName,
      this.firstName,
      this.lastName,
      this.social,
      this.phone,
      this.showEmail,
      this.address,
      this.location,
      this.banner,
      this.bannerId,
      this.gravatar,
      this.gravatarId,
      this.shopUrl,
      this.productsPerPage,
      this.showMoreProductTab,
      this.tocEnabled,
      this.storeToc,
      this.featured,
      this.rating,
      this.enabled,
      this.registered,
      this.payment,
      this.trusted});

  factory Store.fromJson(Map<dynamic, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);

  @override
  String toString() {
    return 'Store{id: $id, storeName: $storeName, firstName: $firstName, lastName: $lastName, social: ${social==null?'':social.toString()}, phone: $phone, showEmail: $showEmail, address: ${address == null ? '' :address.toString()}, location: $location, banner: $banner, bannerId: $bannerId, gravatar: $gravatar, gravatarId: $gravatarId, shopUrl: $shopUrl, productsPerPage: $productsPerPage, showMoreProductTab: $showMoreProductTab, tocEnabled: $tocEnabled, storeToc: $storeToc, featured: $featured, rating: ${rating == null ?'':rating.toString()}, enabled: $enabled, registered: $registered, payment: $payment, trusted: $trusted}';
  }
}

@JsonSerializable()
class Social {
  String fb;
  String youtube;
  String twitter;
  String linkedin;
  String pinterest;
  String instagram;

  Social(
      {this.fb,
      this.youtube,
      this.twitter,
      this.linkedin,
      this.pinterest,
      this.instagram});

  factory Social.fromJson(Map<dynamic, dynamic> json) => _$SocialFromJson(json);

  Map<String, dynamic> toJson() => _$SocialToJson(this);

  @override
  String toString() {
    return 'Social{fb: $fb, youtube: $youtube, twitter: $twitter, linkedin: $linkedin, pinterest: $pinterest, instagram: $instagram}';
  }
}

@JsonSerializable()
class Address {
  @JsonKey(name: 'street_1')
  String street1;
  @JsonKey(name: 'street_2')
  String street2;
  String city;
  String zip;
  String state;
  String country;

  Address(
      {this.street1,
      this.street2,
      this.city,
      this.zip,
      this.state,
      this.country});

  factory Address.fromJson(Map<dynamic, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return 'Address{street1: $street1, street2: $street2, city: $city, zip: $zip, state: $state, country: $country}';
  }
}

@JsonSerializable()
class Rating {
  String rating;
  int count;

  Rating({this.rating, this.count});

  factory Rating.fromJson(Map<dynamic, dynamic> json) => _$RatingFromJson(json);

  Map<String, dynamic> toJson() => _$RatingToJson(this);

  @override
  String toString() {
    return 'Rating{rating: $rating, count: $count}';
  }
}
