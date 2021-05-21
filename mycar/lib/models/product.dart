import 'dart:convert';

List<Product> productListFromJson(String str) => List<Product>.from(json.decode(str).map((x)=>Product.fromJson(x)));

class Product{
  int id;
  String name;
  String type;
  String status;
  bool featured;
  String catalogVisibility;
  String description;
  String shortDescription;
  String permalink;
  String sku;
  String price;
  double regularPrice;
  double salePrice;
  //DateTime dateOnSaleFromGmt;
  //DateTime dateOnSaleToGmt;
  bool onSale;
  bool purchasable;
  int totalSales;
  bool virtual;
  bool downloadable;
  String externalUrl;
  String buttonText;
  bool manageStock;
  int stockQuantity;
  String stockStatus;
  String backorders;
  bool backordersAllowed;
  bool backordered;
  bool soldIndividually;
  String weight;
  //Dimensions dimensions;
  //bool shippingRequired;
  //bool shippingTaxable;
  //String shippingClass;
  bool reviewsAllowed;
  String averageRating;
  int ratingCount;
  List<int> relatedIds;
  List<int> upsellIds;
  List<int> crossSellIds;
  //int parentId;
  String purchaseNote;
  List<int> categories;
  List<dynamic> tags;
  List<Image> images;
  //List<Attribute> attributes;
  List<dynamic> groupedProducts;
  //int menuOrder;
  List<MetaData> metaData;
  //String storeName;
  //List<AvailableVariation> availableVariations;
  //List<VariationOption> variationOptions;
  String variationId;
  String formattedPrice;
  String formattedSalesPrice;
  Vendor vendor;
  List<Product> children;

  Product({
    this.id,
    this.name,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.permalink,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    //this.dateOnSaleFromGmt,
    //this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.externalUrl,
    this.buttonText,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    //this.dimensions,
    //this.shippingRequired,
    //this.shippingTaxable,
    //this.shippingClass,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    //this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    //this.attributes,
    this.groupedProducts,
    //this.menuOrder,
    this.metaData,
    //this.storeName,
    //this.availableVariations,
    //this.variationOptions,
    this.variationId,
    this.formattedPrice,
    this.formattedSalesPrice,
    this.vendor,
    this.children
  });

  factory Product.fromJson(Map<String,dynamic> json)=> Product(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    type: json["type"] == null ? null : json["type"],
    status: json["status"] == null ? null : json["status"],
    featured: json["featured"] == null ? null : json["featured"],
    catalogVisibility: json["catalog_visibility"] == null ? null : json["catalog_visibility"],
    description: json["description"] == null ? null : json["description"],
    shortDescription: json["short_description"] == null ? null : json["short_description"],
    permalink: json["permalink"] == null ? null : json["permalink"],
    sku: json["sku"] == null ? null : json["sku"],
    formattedPrice: json["formated_price"] == null ? null : json["formated_price"],
    formattedSalesPrice: json["formated_sales_price"] == null ? null : json["formated_sales_price"],
    price: json["price"] == null ? null : json["price"],
    //regularPrice: json["regular_price"] == null ? null : double.parse(json["regular_price"]),
    //salePrice: json["sale_price"] == null ? null : double.parse(json["sale_price"]),
    //dateOnSaleFromGmt: json["date_on_sale_from_gmt"] == null ? null : DateTime.parse(json["date_on_sale_from_gmt"]),
    //dateOnSaleToGmt: json["date_on_sale_to_gmt"] == null ? null : DateTime.parse(json["date_on_sale_to_gmt"]),
    onSale: json["on_sale"] == null ? null : json["on_sale"],
    purchasable: json["purchasable"] == null ? null : json["purchasable"],
    totalSales: json["total_sales"] == null ? null : json["total_sales"],
    virtual: json["virtual"] == null ? null : json["virtual"],
    downloadable: json["downloadable"] == null ? null : json["downloadable"],
    externalUrl: json["external_url"] == null ? null : json["external_url"],
    buttonText: json["button_text"] == null ? null : json["button_text"],
    manageStock: json["manage_stock"] == null ? null : json["manage_stock"],
    stockQuantity: json["stock_quantity"] == null ? null : json["stock_quantity"],
    stockStatus: json["stock_status"] == null ? null : json["stock_status"],
    backorders: json["backorders"] == null ? null : json["backorders"],
    backordersAllowed: json["backorders_allowed"] == null ? null : json["backorders_allowed"],
    backordered: json["backordered"] == null ? null : json["backordered"],
    soldIndividually: json["sold_individually"] == null ? null : json["sold_individually"],
    weight: json["weight"] == null ? null : json["weight"],
    //dimensions: json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]),
    //shippingRequired: json["shipping_required"] == null ? null : json["shipping_required"],
    //shippingTaxable: json["shipping_taxable"] == null ? null : json["shipping_taxable"],
    //shippingClass: json["shipping_class"] == null ? null : json["shipping_class"],
    reviewsAllowed: json["reviews_allowed"] == null ? null : json["reviews_allowed"],
    averageRating: json["average_rating"] == null ? null : json["average_rating"],
    ratingCount: json["rating_count"] == null ? null : json["rating_count"],
    relatedIds: json["related_ids"] == null ? null : List<int>.from(json["related_ids"].map((x) => x)),
    upsellIds: json["upsell_ids"] == null ? null : List<int>.from(json["upsell_ids"].map((x) => x)),
    crossSellIds: json["cross_sell_ids"] == null ? null : List<int>.from(json["cross_sell_ids"].map((x) => x)),
    //parentId: json["parent_id"] == null ? null : json["parent_id"],
    purchaseNote: json["purchase_note"] == null ? null : json["purchase_note"],
    categories: json["categories"] == null ? [] :  List<int>.from(json["categories"].map((x) => x)),
    tags: json["tags"] == null ? null : List<dynamic>.from(json["tags"].map((x) => x)),
    images: json["images"] == null ? null : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    //attributes: json["attributes"] == null ? null : List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    groupedProducts: json["grouped_products"] == null ? null : List<dynamic>.from(json["grouped_products"].map((x) => x)),
    //menuOrder: json["menu_order"] == null ? null : json["menu_order"],
    metaData: json["meta_data"] == null ? null : List<MetaData>.from(json["meta_data"].map((x) => MetaData.fromJson(x))),
    //storeName: json["store_name"] == null ? null : json["store_name"],
    //availableVariations: json["availableVariations"] == null ? null : List<AvailableVariation>.from(json["availableVariations"].map((x) => AvailableVariation.fromJson(x))),
    //variationOptions: json["variationOptions"] == null ? null : List<VariationOption>.from(json["variationOptions"].map((x) => VariationOption.fromJson(x))),
    variationId: null,
    vendor: json["store"] == null ? null : Vendor.fromJson(json["store"]),
    children: json['children'] == null ? null : List<Product>.from(json["children"].map((x) => Product.fromJson(x))),);

  @override
  String toString() {
    return 'Product{id: $id, name: $name, type: $type, status: $status, featured: $featured, catalogVisibility: $catalogVisibility, description: $description, shortDescription: $shortDescription, permalink: $permalink, sku: $sku, price: $price, regularPrice: $regularPrice, salePrice: $salePrice, onSale: $onSale, purchasable: $purchasable, totalSales: $totalSales, virtual: $virtual, downloadable: $downloadable, externalUrl: $externalUrl, buttonText: $buttonText, manageStock: $manageStock, stockQuantity: $stockQuantity, stockStatus: $stockStatus, backorders: $backorders, backordersAllowed: $backordersAllowed, backordered: $backordered, soldIndividually: $soldIndividually, weight: $weight, reviewsAllowed: $reviewsAllowed, averageRating: $averageRating, ratingCount: $ratingCount, relatedIds: $relatedIds, upsellIds: $upsellIds, crossSellIds: $crossSellIds, purchaseNote: $purchaseNote, categories: $categories, tags: $tags, images: ${images==null?'':images.toString()}, groupedProducts: $groupedProducts, metaData: ${metaData==null?'':metaData.toString()}, variationId: $variationId, formattedPrice: $formattedPrice, formattedSalesPrice: $formattedSalesPrice, vendor: ${vendor==null?'':vendor.toString()}, children: $children}';
  }
}

class Vendor {
  dynamic id;
  String name;
  String icon;

  Vendor({
    this.id,
    this.name,
    this.icon,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
    id: json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null || json["icon"] == false ? null : json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
  };

  @override
  String toString() {
    return 'Vendor{id: $id, name: $name, icon: $icon}';
  }
}

class Image {
  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String src;
  String name;
  String alt;

  Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"] == null ? null : json["id"],
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateCreatedGmt: json["date_created_gmt"] == null ? null : DateTime.parse(json["date_created_gmt"]),
    dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
    dateModifiedGmt: json["date_modified_gmt"] == null ? null : DateTime.parse(json["date_modified_gmt"]),
    src: json["src"] == null ? null : json["src"],
    name: json["name"] == null ? null : json["name"],
    alt: json["alt"] == null ? null : json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "date_created": dateCreated == null ? null : dateCreated.toIso8601String(),
    "date_created_gmt": dateCreatedGmt == null ? null : dateCreatedGmt.toIso8601String(),
    "date_modified": dateModified == null ? null : dateModified.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt == null ? null : dateModifiedGmt.toIso8601String(),
    "src": src == null ? null : src,
    "name": name == null ? null : name,
    "alt": alt == null ? null : alt,
  };

  @override
  String toString() {
    return 'Image{id: $id, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, src: $src, name: $name, alt: $alt}';
  }
}

class MetaData {
  int id;
  String key;
  dynamic value;

  MetaData({
    this.id,
    this.key,
    this.value,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) => MetaData(
    id: json["id"] == null ? null : json["id"],
    key: json["key"] == null ? null : json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "key": key == null ? null : key,
    "value": value,
  };

  @override
  String toString() {
    return 'MetaData{id: $id, key: $key, value: $value}';
  }
}
