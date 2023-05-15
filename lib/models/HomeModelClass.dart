class HomeModelClass {
  String? status;
  List<Data>? data;

  HomeModelClass({this.status, this.data});

  HomeModelClass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? createdBy;
  String? lastUpdatedBy;
  String? name;
  List<ProductToShow>? productToShow;
  List<BrandToShow>? brandToShow;
  List<CategoryToShow>? categoryToShow;
  Null? deletedAt;
  String? createdAt;
  int? iV;
  Flow? flow;

  Data(
      {this.sId,
        this.createdBy,
        this.lastUpdatedBy,
        this.name,
        this.productToShow,
        this.brandToShow,
        this.categoryToShow,
        this.deletedAt,
        this.createdAt,
        this.iV,
        this.flow});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    createdBy = json['created_by'];
    lastUpdatedBy = json['last_updated_by'];
    name = json['name'];
    if (json['product_to_show'] != null) {
      productToShow = <ProductToShow>[];
      json['product_to_show'].forEach((v) {
        productToShow!.add(new ProductToShow.fromJson(v));
      });
    }
    if (json['brand_to_show'] != null) {
      brandToShow = <BrandToShow>[];
      json['brand_to_show'].forEach((v) {
        brandToShow!.add(new BrandToShow.fromJson(v));
      });
    }
    if (json['category_to_show'] != null) {
      categoryToShow = <CategoryToShow>[];
      json['category_to_show'].forEach((v) {
        categoryToShow!.add(new CategoryToShow.fromJson(v));
      });
    }
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    iV = json['__v'];
    flow = json['flow'] != null ? new Flow.fromJson(json['flow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['created_by'] = this.createdBy;
    data['last_updated_by'] = this.lastUpdatedBy;
    data['name'] = this.name;
    if (this.productToShow != null) {
      data['product_to_show'] =
          this.productToShow!.map((v) => v.toJson()).toList();
    }
    if (this.brandToShow != null) {
      data['brand_to_show'] = this.brandToShow!.map((v) => v.toJson()).toList();
    }
    if (this.categoryToShow != null) {
      data['category_to_show'] =
          this.categoryToShow!.map((v) => v.toJson()).toList();
    }
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['__v'] = this.iV;
    if (this.flow != null) {
      data['flow'] = this.flow!.toJson();
    }
    return data;
  }
}

class ProductToShow {
  String? sId;
  String? createdBy;
  String? lastUpdatedBy;
  String? image;
  String? priceRange;
  String? brand;
  String? category;
  String? shortName;
  String? longName;
  String? description;
  String? hsn;
  List<MoreInfo>? moreInfo;
  List<String>? relatedProducts;
  Null? deletedAt;
  String? createdAt;
  int? iV;

  ProductToShow(
      {this.sId,
        this.createdBy,
        this.lastUpdatedBy,
        this.image,
        this.priceRange,
        this.brand,
        this.category,
        this.shortName,
        this.longName,
        this.description,
        this.hsn,
        this.moreInfo,
        this.relatedProducts,
        this.deletedAt,
        this.createdAt,
        this.iV});

  ProductToShow.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    createdBy = json['created_by'];
    lastUpdatedBy = json['last_updated_by'];
    image = json['image'];
    priceRange = json['price_range'];
    brand = json['brand'];
    category = json['category'];
    shortName = json['short_name'];
    longName = json['long_name'];
    description = json['description'];
    hsn = json['hsn'];
    if (json['more_info'] != null) {
      moreInfo = <MoreInfo>[];
      json['more_info'].forEach((v) {
        moreInfo!.add(new MoreInfo.fromJson(v));
      });
    }
    relatedProducts = json['related_products'].cast<String>();
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['created_by'] = this.createdBy;
    data['last_updated_by'] = this.lastUpdatedBy;
    data['image'] = this.image;
    data['price_range'] = this.priceRange;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['short_name'] = this.shortName;
    data['long_name'] = this.longName;
    data['description'] = this.description;
    data['hsn'] = this.hsn;
    if (this.moreInfo != null) {
      data['more_info'] = this.moreInfo!.map((v) => v.toJson()).toList();
    }
    data['related_products'] = this.relatedProducts;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class MoreInfo {
  String? type;
  String? value;
  String? sId;

  MoreInfo({this.type, this.value, this.sId});

  MoreInfo.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    data['_id'] = this.sId;
    return data;
  }
}

class BrandToShow {
  String? sId;
  String? createdBy;
  String? lastUpdatedBy;
  String? image;
  String? name;
  Flow? flow;
  Null? deletedAt;
  String? createdAt;
  int? iV;

  BrandToShow(
      {this.sId,
        this.createdBy,
        this.lastUpdatedBy,
        this.image,
        this.name,
        this.flow,
        this.deletedAt,
        this.createdAt,
        this.iV});

  BrandToShow.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    createdBy = json['created_by'];
    lastUpdatedBy = json['last_updated_by'];
    image = json['image'];
    name = json['name'];
    flow = json['flow'] != null ? new Flow.fromJson(json['flow']) : null;
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['created_by'] = this.createdBy;
    data['last_updated_by'] = this.lastUpdatedBy;
    data['image'] = this.image;
    data['name'] = this.name;
    if (this.flow != null) {
      data['flow'] = this.flow!.toJson();
    }
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Flow {
  Null? deletedAt;
  String? sId;
  String? name;
  String? createdBy;
  String? lastUpdatedBy;
  String? createdAt;
  int? iV;

  Flow(
      {this.deletedAt,
        this.sId,
        this.name,
        this.createdBy,
        this.lastUpdatedBy,
        this.createdAt,
        this.iV});

  Flow.fromJson(Map<String, dynamic> json) {
    deletedAt = json['deleted_at'];
    sId = json['_id'];
    name = json['name'];
    createdBy = json['created_by'];
    lastUpdatedBy = json['last_updated_by'];
    createdAt = json['created_at'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['deleted_at'] = this.deletedAt;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['created_by'] = this.createdBy;
    data['last_updated_by'] = this.lastUpdatedBy;
    data['created_at'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

class CategoryToShow {
  bool? showProductAfterThis;
  String? sId;
  String? createdBy;
  String? lastUpdatedBy;
  String? image;
  String? name;
  Flow? flow;
  Null? deletedAt;
  String? createdAt;
  int? iV;
  String? parentCategory;

  CategoryToShow(
      {this.showProductAfterThis,
        this.sId,
        this.createdBy,
        this.lastUpdatedBy,
        this.image,
        this.name,
        this.flow,
        this.deletedAt,
        this.createdAt,
        this.iV,
        this.parentCategory});

  CategoryToShow.fromJson(Map<String, dynamic> json) {
    showProductAfterThis = json['show_product_after_this'];
    sId = json['_id'];
    createdBy = json['created_by'];
    lastUpdatedBy = json['last_updated_by'];
    image = json['image'];
    name = json['name'];
    flow = json['flow'] != null ? new Flow.fromJson(json['flow']) : null;
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    iV = json['__v'];
    parentCategory = json['parent_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['show_product_after_this'] = this.showProductAfterThis;
    data['_id'] = this.sId;
    data['created_by'] = this.createdBy;
    data['last_updated_by'] = this.lastUpdatedBy;
    data['image'] = this.image;
    data['name'] = this.name;
    if (this.flow != null) {
      data['flow'] = this.flow!.toJson();
    }
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['__v'] = this.iV;
    data['parent_category'] = this.parentCategory;
    return data;
  }
}