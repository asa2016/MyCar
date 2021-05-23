
part of 'product.dart';

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
    permalink: json['permalink'] as String,
    dateCreated: json['date_created'] as String,
    dateCreatedGmt: json['date_created_gmt'] as String,
    dateModified: json['date_modified'] as String,
    dateModifiedGmt: json['date_modified_gmt'] as String,
    type: json['type'] as String,
    status: json['status'] as String,
    featured: json['featured'] as bool,
    catalogVisibility: json['catalog_visibility'] as String,
    description: json['description'] as String,
    shortDescription: json['short_description'] as String,
    sku: json['sku'] as String,
    price: json['price'] as String,
    regularPrice: json['regular_price'] as String,
    salePrice: json['sale_price'] as String,
    onSale: json['on_sale'] as bool,
    purchasable: json['purchasable'] as bool,
    totalSales: json['total_sales'] as int,
    virtual: json['virtual'] as bool,
    downloadable: json['downloadable'] as bool,
    downloadLimit: json['download_limit'] as int,
    downloadExpiry: json['download_expiry'] as int,
    externalUrl: json['external_url'] as String,
    buttonText: json['button_text'] as String,
    taxStatus: json['tax_status'] as String,
    taxClass: json['tax_class'] as String,
    manageStock: json['manage_stock'] as bool,
    backorders: json['backorders'] as String,
    backordersAllowed: json['backorders_allowed'] as bool,
    backordered: json['backordered'] as bool,
    soldIndividually: json['sold_individually'] as bool,
    weight: json['weight'] as String,
    dimensions: json['dimensions'] == null ? null : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
    shippingRequired: json['shipping_required'] as bool,
    shippingTaxable: json['shipping_taxable'] as bool,
    shippingClass: json['shipping_class'] as String,
    shippingClassId: json['shipping_class_id'] as int,
    reviewsAllowed: json['reviews_allowed'] as bool,
    averageRating: json['average_rating'] as String,
    ratingCount: json['rating_count'] as int,
    parentId: json['parent_id'] as int,
    purchaseNote: json['purchase_note'] as String,
    categories: (json['categories'] as List)?.map((e) => e == null ? null : Categories.fromJson(e as Map<String, dynamic>))?.toList(),
    images: (json['images'] as List)?.map((e) => e == null ? null : ImageMdl.fromJson(e as Map<String, dynamic>))?.toList(),
    menuOrder: json['menu_order'] as int,
    priceHtml: json['price_html'] as String,
    stockStatus: json['stock_status'] as String,
    store: json['store'] == null ? null : StorePrdct.fromJson(json['store'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalog_visibility': instance.catalogVisibility,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'on_sale': instance.onSale,
      'purchasable': instance.purchasable,
      'total_sales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'external_url': instance.externalUrl,
      'button_text': instance.buttonText,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'backorders': instance.backorders,
      'backorders_allowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shipping_required': instance.shippingRequired,
      'shipping_taxable': instance.shippingTaxable,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'reviews_allowed': instance.reviewsAllowed,
      'average_rating': instance.averageRating,
      'rating_count': instance.ratingCount,
      'parent_id': instance.parentId,
      'purchase_note': instance.purchaseNote,
      'categories': instance.categories,
      'images': instance.images,
      'menu_order': instance.menuOrder,
      'price_html': instance.priceHtml,
      'stock_status': instance.stockStatus,
      'store': instance.store,
    };

ImageMdl _$ImageMdlFromJson(Map<String, dynamic> json) {
  return ImageMdl(
    id: json['id'] as int,
    dateCreated: json['date_created'] == null
        ? null
        : DateTime.parse(json['date_created'] as String),
    dateCreatedGmt: json['date_created_gmt'] == null
        ? null
        : DateTime.parse(json['date_created_gmt'] as String),
    dateModified: json['date_modified'] == null
        ? null
        : DateTime.parse(json['date_modified'] as String),
    dateModifiedGmt: json['date_modified_gmt'] == null
        ? null
        : DateTime.parse(json['date_modified_gmt'] as String),
    src: json['src'] as String,
    name: json['name'] as String,
    alt: json['alt'] as String,
  );
}

Map<String, dynamic> _$ImageMdlToJson(ImageMdl instance) => <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_created_gmt': instance.dateCreatedGmt?.toIso8601String(),
      'date_modified': instance.dateModified?.toIso8601String(),
      'date_modified_gmt': instance.dateModifiedGmt?.toIso8601String(),
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) {
  return Dimensions(
    length: json['length'] as String,
    width: json['width'] as String,
    height: json['height'] as String,
  );
}

Map<String, dynamic> _$DimensionsToJson(Dimensions instance) => <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

StorePrdct _$StoreFromJson(Map<String, dynamic> json) {
  return StorePrdct(
    id: json['id'] as int,
    name: json['name'] as String,
    shopName: json['shop_name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$StoreToJson(StorePrdct instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shop_name': instance.shopName,
      'url': instance.url,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return Categories(
    id: json['id'] as int,
    name: json['name'] as String,
    slug: json['slug'] as String,
  );
}

Map<String, dynamic> _$CategoriesToJson(Categories instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };
