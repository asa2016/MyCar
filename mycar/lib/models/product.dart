import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

List<Product> productListFromJson(String str) => List<Product>.from(json.decode(str).map((x)=>Product.fromJson(x)));

@JsonSerializable()
class Product {

  int id;
  String name;
  String slug;
  String permalink;
  @JsonKey(name: 'date_created') String dateCreated;
  @JsonKey(name: 'date_created_gmt') String dateCreatedGmt;
  @JsonKey(name: 'date_modified') String dateModified;
  @JsonKey(name: 'date_modified_gmt') String dateModifiedGmt;
  String type;
  String status;
  bool featured;
  @JsonKey(name: 'catalog_visibility') String catalogVisibility;
  String description;
  @JsonKey(name: 'short_description') String shortDescription;
  String sku;
  String price;
  @JsonKey(name: 'regular_price') String regularPrice;
  @JsonKey(name: 'sale_price') String salePrice;
  @JsonKey(name: 'on_sale') bool onSale;
  bool purchasable;
  @JsonKey(name: 'total_sales') int totalSales;
  bool virtual;
  bool downloadable;
  @JsonKey(name: 'download_limit') int downloadLimit;
  @JsonKey(name: 'download_expiry') int downloadExpiry;
  @JsonKey(name: 'external_url') String externalUrl;
  @JsonKey(name: 'button_text') String buttonText;
  @JsonKey(name: 'tax_status') String taxStatus;
  @JsonKey(name: 'tax_class') String taxClass;
  @JsonKey(name: 'manage_stock') bool manageStock;
  String backorders;
  @JsonKey(name: 'backorders_allowed') bool backordersAllowed;
  bool backordered;
  @JsonKey(name: 'sold_individually') bool soldIndividually;
  String weight;
  Dimensions dimensions;
  @JsonKey(name: 'shipping_required') bool shippingRequired;
  @JsonKey(name: 'shipping_taxable') bool shippingTaxable;
  @JsonKey(name: 'shipping_class') String shippingClass;
  @JsonKey(name: 'shipping_class_id') int shippingClassId;
  @JsonKey(name: 'reviews_allowed') bool reviewsAllowed;
  @JsonKey(name: 'average_rating') String averageRating;
  @JsonKey(name: 'rating_count') int ratingCount;
  @JsonKey(name: 'parent_id') int parentId;
  @JsonKey(name: 'purchase_note') String purchaseNote;
  List<Categories> categories;
  List<ImageMdl> images;
  @JsonKey(name: 'menu_order') int menuOrder;
  @JsonKey(name: 'price_html') String priceHtml;
  @JsonKey(name: 'stock_status') String stockStatus;
  StorePrdct store;

  Product(
      {this.id,
      this.name,
      this.slug,
      this.permalink,
      this.dateCreated,
      this.dateCreatedGmt,
      this.dateModified,
      this.dateModifiedGmt,
      this.type,
      this.status,
      this.featured,
      this.catalogVisibility,
      this.description,
      this.shortDescription,
      this.sku,
      this.price,
      this.regularPrice,
      this.salePrice,
      this.onSale,
      this.purchasable,
      this.totalSales,
      this.virtual,
      this.downloadable,
      this.downloadLimit,
      this.downloadExpiry,
      this.externalUrl,
      this.buttonText,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.backorders,
      this.backordersAllowed,
      this.backordered,
      this.soldIndividually,
      this.weight,
      this.dimensions,
      this.shippingRequired,
      this.shippingTaxable,
      this.shippingClass,
      this.shippingClassId,
      this.reviewsAllowed,
      this.averageRating,
      this.ratingCount,
      this.parentId,
      this.purchaseNote,
      this.categories,
      this.images,
      this.menuOrder,
      this.priceHtml,
      this.stockStatus,
      this.store});

  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  String toString() {
    return 'Product{id: $id, name: $name, slug: $slug, permalink: $permalink, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, type: $type, status: $status, featured: $featured, catalogVisibility: $catalogVisibility, description: $description, shortDescription: $shortDescription, sku: $sku, price: $price, regularPrice: $regularPrice, salePrice: $salePrice, onSale: $onSale, purchasable: $purchasable, totalSales: $totalSales, virtual: $virtual, downloadable: $downloadable, downloadLimit: $downloadLimit, downloadExpiry: $downloadExpiry, externalUrl: $externalUrl, buttonText: $buttonText, taxStatus: $taxStatus, taxClass: $taxClass, manageStock: $manageStock, backorders: $backorders, backordersAllowed: $backordersAllowed, backordered: $backordered, soldIndividually: $soldIndividually, weight: $weight, dimensions: ${dimensions.toString()}, shippingRequired: $shippingRequired, shippingTaxable: $shippingTaxable, shippingClass: $shippingClass, shippingClassId: $shippingClassId, reviewsAllowed: $reviewsAllowed, averageRating: $averageRating, ratingCount: $ratingCount, parentId: $parentId, purchaseNote: $purchaseNote, categories: ${categories==null?'':categories.map((e) => e.toString()).toString()}, images: ${images==null?'':images.map((e) => e.toString()).toString()}, menuOrder: $menuOrder, priceHtml: $priceHtml, stockStatus: $stockStatus, store: ${store==null?'':store.toString()}}';
  }
}

@JsonSerializable()
class ImageMdl {
  int id;
  @JsonKey(name: 'date_created') DateTime dateCreated;
  @JsonKey(name: 'date_created_gmt') DateTime dateCreatedGmt;
  @JsonKey(name: 'date_modified') DateTime dateModified;
  @JsonKey(name: 'date_modified_gmt') DateTime dateModifiedGmt;
  String src;
  String name;
  String alt;

  ImageMdl({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  factory ImageMdl.fromJson(Map<String, dynamic> json) => _$ImageMdlFromJson(json);

  Map<String, dynamic> toJson() => _$ImageMdlToJson(this);

  @override
  String toString() {
    return 'Image{id: $id, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, src: $src, name: $name, alt: $alt}';
  }
}

@JsonSerializable()
class Dimensions {

  String length;
  String width;
  String height;

  Dimensions({this.length, this.width, this.height});

  factory Dimensions.fromJson(Map<String,dynamic> json) => _$DimensionsFromJson(json);
  Map<String, dynamic> toJson() => _$DimensionsToJson(this);

  @override
  String toString() {
    return 'Dimensions{length: $length, width: $width, height: $height}';
  }
}

@JsonSerializable()
class StorePrdct {
  int id;
  String name;
  @JsonKey(name: 'shop_name') String shopName;
  String url;

  StorePrdct({this.id, this.name, this.shopName, this.url});

  factory StorePrdct.fromJson(Map<String,dynamic> json) => _$StoreFromJson(json);
  Map<String, dynamic> toJson() => _$StoreToJson(this);

  @override
  String toString() {
    return 'Store{id: $id, name: $name, shopName: $shopName, url: $url}';
  }
}

@JsonSerializable()
class Categories {
  int id;
  String name;
  String slug;

  Categories({this.id, this.name, this.slug});

  factory Categories.fromJson(Map<String,dynamic> json) => _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);

  @override
  String toString() {
    return 'Categories{id: $id, name: $name, slug: $slug}';
  }
}
