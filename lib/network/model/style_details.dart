/*
class StyelDetailsModel {
  int? statusCode;
  Data? data;
  String? message;

  StyelDetailsModel({this.statusCode, this.data, this.message});

  StyelDetailsModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StatusCode'] = this.statusCode;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['Message'] = this.message;
    return data;
  }
}

class Data {
  List<StyleDetails>? styleDetails;

  Data({this.styleDetails});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['StyleDetails'] != null) {
      styleDetails = <StyleDetails>[];
      json['StyleDetails'].forEach((v) {
        styleDetails!.add(new StyleDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.styleDetails != null) {
      data['StyleDetails'] = this.styleDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StyleDetails {
  int? llcAppStyleCode;
  String? custStyleNo;
  int? gsStyleCode;
  String? gsStyleNo;
  int? gsModelNoCode;
  String? gsModelNo;
  int? designNoCode;
  String? designNo;
  int? categoryCode;
  String? category;
  int? subCategoryCode;
  String? subCategory;
  int? genderCode;
  String? gender;
  int? eventCode;
  String? event;
  int? collectionCode;
  String? collection;
  double? grossWt;
  double? finWt;
  double? castingWt;
  int? baseMetalCode;
  String? baseMetal;
  String? itemSize;
  int? ringSizeCode;
  double? ringSize;
  String? csWt;
  double? diaWt;
  double? pennyWt;
  int? customerCode;
  int? designerNameCode;
  String? designerName;
  String? customerDesignNo;
  String? styleRemarks;
  String? referenceStyleNo;
  List<MetalDetails>? metalDetails;
  List<FindingDetails>? findingDetails;
  List<ChargableDetails>? chargableDetails;
  List<AlloyDetails>? alloyDetails;
  List<ImageDetails>? imageDetails;

  StyleDetails(
      {this.llcAppStyleCode,
        this.custStyleNo,
        this.gsStyleCode,
        this.gsStyleNo,
        this.gsModelNoCode,
        this.gsModelNo,
        this.designNoCode,
        this.designNo,
        this.categoryCode,
        this.category,
        this.subCategoryCode,
        this.subCategory,
        this.genderCode,
        this.gender,
        this.eventCode,
        this.event,
        this.collectionCode,
        this.collection,
        this.grossWt,
        this.finWt,
        this.castingWt,
        this.baseMetalCode,
        this.baseMetal,
        this.itemSize,
        this.ringSizeCode,
        this.ringSize,
        this.csWt,
        this.diaWt,
        this.pennyWt,
        this.customerCode,
        this.designerNameCode,
        this.designerName,
        this.customerDesignNo,
        this.styleRemarks,
        this.referenceStyleNo,
        this.metalDetails,
        this.findingDetails,
        this.chargableDetails,
        this.alloyDetails,
        this.imageDetails});

  StyleDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleCode = json['llc_app_style_code'];
    custStyleNo = json['cust_style_no'];
    gsStyleCode = json['gs_style_code'];
    gsStyleNo = json['gs_style_no'];
    gsModelNoCode = json['gs_model_no_code'];
    gsModelNo = json['gs_model_no'];
    designNoCode = json['design_no_code'];
    designNo = json['design_no'];
    categoryCode = json['category_code'];
    category = json['category'];
    subCategoryCode = json['sub_category_code'];
    subCategory = json['sub_category'];
    genderCode = json['gender_code'];
    gender = json['gender'];
    eventCode = json['event_code'];
    event = json['event'];
    collectionCode = json['collection_code'];
    collection = json['collection'];
    grossWt = json['gross_wt'];
    finWt = json['fin_wt'];
    castingWt = json['casting_wt'];
    baseMetalCode = json['base_metal_code'];
    baseMetal = json['base_metal'];
    itemSize = json['item_size'];
    ringSizeCode = json['ring_size_code'];
    ringSize = json['ring_size'];
    csWt = json['cs_wt'];
    diaWt = json['dia_wt'];
    pennyWt = json['penny_wt'];
    customerCode = json['customer_code'];
    designerNameCode = json['designer_name_code'];
    designerName = json['designer_name'];
    customerDesignNo = json['customer_design_no'];
    styleRemarks = json['style_remarks'];
    referenceStyleNo = json['reference_style_no'];
    if (json['MetalDetails'] != null) {
      metalDetails = <MetalDetails>[];
      json['MetalDetails'].forEach((v) {
        metalDetails!.add(new MetalDetails.fromJson(v));
      });
    }
    if (json['FindingDetails'] != null) {
      findingDetails = <FindingDetails>[];
      json['FindingDetails'].forEach((v) {
        findingDetails!.add(new FindingDetails.fromJson(v));
      });
    }
    if (json['chargableDetails'] != null) {
      chargableDetails = <ChargableDetails>[];
      json['chargableDetails'].forEach((v) {
        chargableDetails!.add(new ChargableDetails.fromJson(v));
      });
    }
    if (json['AlloyDetails'] != null) {
      alloyDetails = <AlloyDetails>[];
      json['AlloyDetails'].forEach((v) {
        alloyDetails!.add(new AlloyDetails.fromJson(v));
      });
    }
    if (json['ImageDetails'] != null) {
      imageDetails = <ImageDetails>[];
      json['ImageDetails'].forEach((v) {
        imageDetails!.add(new ImageDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['cust_style_no'] = this.custStyleNo;
    data['gs_style_code'] = this.gsStyleCode;
    data['gs_style_no'] = this.gsStyleNo;
    data['gs_model_no_code'] = this.gsModelNoCode;
    data['gs_model_no'] = this.gsModelNo;
    data['design_no_code'] = this.designNoCode;
    data['design_no'] = this.designNo;
    data['category_code'] = this.categoryCode;
    data['category'] = this.category;
    data['sub_category_code'] = this.subCategoryCode;
    data['sub_category'] = this.subCategory;
    data['gender_code'] = this.genderCode;
    data['gender'] = this.gender;
    data['event_code'] = this.eventCode;
    data['event'] = this.event;
    data['collection_code'] = this.collectionCode;
    data['collection'] = this.collection;
    data['gross_wt'] = this.grossWt;
    data['fin_wt'] = this.finWt;
    data['casting_wt'] = this.castingWt;
    data['base_metal_code'] = this.baseMetalCode;
    data['base_metal'] = this.baseMetal;
    data['item_size'] = this.itemSize;
    data['ring_size_code'] = this.ringSizeCode;
    data['ring_size'] = this.ringSize;
    data['cs_wt'] = this.csWt;
    data['dia_wt'] = this.diaWt;
    data['penny_wt'] = this.pennyWt;
    data['customer_code'] = this.customerCode;
    data['designer_name_code'] = this.designerNameCode;
    data['designer_name'] = this.designerName;
    data['customer_design_no'] = this.customerDesignNo;
    data['style_remarks'] = this.styleRemarks;
    data['reference_style_no'] = this.referenceStyleNo;
    if (this.metalDetails != null) {
      data['MetalDetails'] = this.metalDetails!.map((v) => v.toJson()).toList();
    }
    if (this.findingDetails != null) {
      data['FindingDetails'] =
          this.findingDetails!.map((v) => v.toJson()).toList();
    }
    if (this.chargableDetails != null) {
      data['chargableDetails'] =
          this.chargableDetails!.map((v) => v.toJson()).toList();
    }
    if (this.alloyDetails != null) {
      data['AlloyDetails'] = this.alloyDetails!.map((v) => v.toJson()).toList();
    }
    if (this.imageDetails != null) {
      data['ImageDetails'] = this.imageDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MetalDetails {
  int? llcAppStyleMetalCode;
  int? llcAppStyleCode;
  int? srNo;
  int? metalTypeCode;
  String? metalType;
  int? colorCode;
  String? color;
  int? finenessCode;
  double? fineness;
  double? finWt;
  String? mountWt;
  double? castWt;
  double? pennyWt;
  double? waxWt;
  List<StoneDetails>? stoneDetails;

  MetalDetails(
      {this.llcAppStyleMetalCode,
        this.llcAppStyleCode,
        this.srNo,
        this.metalTypeCode,
        this.metalType,
        this.colorCode,
        this.color,
        this.finenessCode,
        this.fineness,
        this.finWt,
        this.mountWt,
        this.castWt,
        this.pennyWt,
        this.waxWt,
        this.stoneDetails});

  MetalDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleMetalCode = json['llc_app_style_metal_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    srNo = json['sr_no'];
    metalTypeCode = json['metal_type_code'];
    metalType = json['metal_type'];
    colorCode = json['Color_code'];
    color = json['Color'];
    finenessCode = json['fineness_Code'];
    fineness = json['fineness'];
    finWt = json['fin_Wt'];
    mountWt = json['mount_wt'];
    castWt = json['cast_wt'];
    pennyWt = json['penny_wt'];
    waxWt = json['wax_wt'];
    if (json['StoneDetails'] != null) {
      stoneDetails = <StoneDetails>[];
      json['StoneDetails'].forEach((v) {
        stoneDetails!.add(new StoneDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['sr_no'] = this.srNo;
    data['metal_type_code'] = this.metalTypeCode;
    data['metal_type'] = this.metalType;
    data['Color_code'] = this.colorCode;
    data['Color'] = this.color;
    data['fineness_Code'] = this.finenessCode;
    data['fineness'] = this.fineness;
    data['fin_Wt'] = this.finWt;
    data['mount_wt'] = this.mountWt;
    data['cast_wt'] = this.castWt;
    data['penny_wt'] = this.pennyWt;
    data['wax_wt'] = this.waxWt;
    if (this.stoneDetails != null) {
      data['StoneDetails'] = this.stoneDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StoneDetails {
  int? llcAppStyleStoneCode;
  int? llcAppStyleMetalCode;
  int? llcAppStyleCode;
  int? metalSrNo;
  int? stoneTypeCode;
  String? stoneType;
  int? shapeCode;
  String? shape;
  int? gradeCode;
  String? grade;
  int? qualityCode;
  String? quality;
  double? size;
  double? mmLength;
  double? mmBreadth;
  int? stoneQty;
  double? diaWt;
  int? settingTypeCode;
  String? settingType;
  int? settingModeCode;
  String? settingMode;
  String? prodSettingTypeCode;
  String? prodSettingType;
  String? prodSettingModeCode;
  String? prodSettingMode;
  bool? isCenterStone;
  double? minDiaWt;
  double? maxDiaWt;
  String? minDiaStones;
  String? maxDiaStones;
  String? removableStone;
  bool? exactSize;
  String? stoneRemarks;
  String? stoneDetails;

  StoneDetails(
      {this.llcAppStyleStoneCode,
        this.llcAppStyleMetalCode,
        this.llcAppStyleCode,
        this.metalSrNo,
        this.stoneTypeCode,
        this.stoneType,
        this.shapeCode,
        this.shape,
        this.gradeCode,
        this.grade,
        this.qualityCode,
        this.quality,
        this.size,
        this.mmLength,
        this.mmBreadth,
        this.stoneQty,
        this.diaWt,
        this.settingTypeCode,
        this.settingType,
        this.settingModeCode,
        this.settingMode,
        this.prodSettingTypeCode,
        this.prodSettingType,
        this.prodSettingModeCode,
        this.prodSettingMode,
        this.isCenterStone,
        this.minDiaWt,
        this.maxDiaWt,
        this.minDiaStones,
        this.maxDiaStones,
        this.removableStone,
        this.exactSize,
        this.stoneRemarks,
        this.stoneDetails});

  StoneDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleStoneCode = json['llc_app_style_stone_code'];
    llcAppStyleMetalCode = json['llc_app_style_metal_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    metalSrNo = json['metal_sr_no'];
    stoneTypeCode = json['stone_type_code'];
    stoneType = json['stone_type'];
    shapeCode = json['shape_code'];
    shape = json['shape'];
    gradeCode = json['grade_code'];
    grade = json['grade'];
    qualityCode = json['quality_code'];
    quality = json['quality'];
    size = json['size'];
    mmLength = json['mm_length'];
    mmBreadth = json['mm_breadth'];
    stoneQty = json['stone_qty'];
    diaWt = json['dia_wt'];
    settingTypeCode = json['setting_type_Code'];
    settingType = json['setting_type'];
    settingModeCode = json['setting_mode_code'];
    settingMode = json['setting_mode'];
    prodSettingTypeCode = json['prod_setting_type_Code'];
    prodSettingType = json['prod_setting_type'];
    prodSettingModeCode = json['prod_setting_mode_code'];
    prodSettingMode = json['prod_setting_mode'];
    isCenterStone = json['is_center_stone'];
    minDiaWt = json['min_dia_wt'];
    maxDiaWt = json['max_dia_wt'];
    minDiaStones = json['min_dia_stones'];
    maxDiaStones = json['max_dia_stones'];
    removableStone = json['removable_stone'];
    exactSize = json['exact_size'];
    stoneRemarks = json['Stone_remarks'];
    stoneDetails = json['StoneDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_stone_code'] = this.llcAppStyleStoneCode;
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['metal_sr_no'] = this.metalSrNo;
    data['stone_type_code'] = this.stoneTypeCode;
    data['stone_type'] = this.stoneType;
    data['shape_code'] = this.shapeCode;
    data['shape'] = this.shape;
    data['grade_code'] = this.gradeCode;
    data['grade'] = this.grade;
    data['quality_code'] = this.qualityCode;
    data['quality'] = this.quality;
    data['size'] = this.size;
    data['mm_length'] = this.mmLength;
    data['mm_breadth'] = this.mmBreadth;
    data['stone_qty'] = this.stoneQty;
    data['dia_wt'] = this.diaWt;
    data['setting_type_Code'] = this.settingTypeCode;
    data['setting_type'] = this.settingType;
    data['setting_mode_code'] = this.settingModeCode;
    data['setting_mode'] = this.settingMode;
    data['prod_setting_type_Code'] = this.prodSettingTypeCode;
    data['prod_setting_type'] = this.prodSettingType;
    data['prod_setting_mode_code'] = this.prodSettingModeCode;
    data['prod_setting_mode'] = this.prodSettingMode;
    data['is_center_stone'] = this.isCenterStone;
    data['min_dia_wt'] = this.minDiaWt;
    data['max_dia_wt'] = this.maxDiaWt;
    data['min_dia_stones'] = this.minDiaStones;
    data['max_dia_stones'] = this.maxDiaStones;
    data['removable_stone'] = this.removableStone;
    data['exact_size'] = this.exactSize;
    data['Stone_remarks'] = this.stoneRemarks;
    data['StoneDetails'] = this.stoneDetails;
    return data;
  }
}

class FindingDetails {
  int? llcAppStyleFindingCode;
  int? llcAppStyleCode;
  int? findingCode;
  String? finding;
  int? subFindingCode;
  String? subFinding;
  int? metalCode;
  String? metal;
  int? metalKtCode;
  double? metalKt;
  double? weight;
  int? qty;
  double? rate;
  double? findingcost;

  FindingDetails(
      {this.llcAppStyleFindingCode,
        this.llcAppStyleCode,
        this.findingCode,
        this.finding,
        this.subFindingCode,
        this.subFinding,
        this.metalCode,
        this.metal,
        this.metalKtCode,
        this.metalKt,
        this.weight,
        this.qty,
        this.rate,
        this.findingcost});

  FindingDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleFindingCode = json['llc_app_style_finding_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    findingCode = json['finding_code'];
    finding = json['finding'];
    subFindingCode = json['sub_finding_code'];
    subFinding = json['sub_finding'];
    metalCode = json['metal_code'];
    metal = json['metal'];
    metalKtCode = json['metal_kt_code'];
    metalKt = json['metal_kt'];
    weight = json['weight'];
    qty = json['qty'];
    rate = json['rate'];
    findingcost = json['Findingcost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_finding_code'] = this.llcAppStyleFindingCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['finding_code'] = this.findingCode;
    data['finding'] = this.finding;
    data['sub_finding_code'] = this.subFindingCode;
    data['sub_finding'] = this.subFinding;
    data['metal_code'] = this.metalCode;
    data['metal'] = this.metal;
    data['metal_kt_code'] = this.metalKtCode;
    data['metal_kt'] = this.metalKt;
    data['weight'] = this.weight;
    data['qty'] = this.qty;
    data['rate'] = this.rate;
    data['Findingcost'] = this.findingcost;
    return data;
  }
}

class ChargableDetails {
  int? llcAppStyleChargeblesCode;
  int? llcAppStyleCode;
  String? llcAppStyleMetalCode;
  int? processTypeCode;
  String? processType;
  int? processNameCode;
  String? processName;
  double? processRate;
  double? processValue;

  ChargableDetails(
      {this.llcAppStyleChargeblesCode,
        this.llcAppStyleCode,
        this.llcAppStyleMetalCode,
        this.processTypeCode,
        this.processType,
        this.processNameCode,
        this.processName,
        this.processRate,
        this.processValue});

  ChargableDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleChargeblesCode = json['llc_app_style_chargebles_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    llcAppStyleMetalCode = json['llc_app_style_metal_code'];
    processTypeCode = json['process_type_code'];
    processType = json['process_type'];
    processNameCode = json['process_name_code'];
    processName = json['process_name'];
    processRate = json['process_rate'];
    processValue = json['process_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_chargebles_code'] = this.llcAppStyleChargeblesCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['process_type_code'] = this.processTypeCode;
    data['process_type'] = this.processType;
    data['process_name_code'] = this.processNameCode;
    data['process_name'] = this.processName;
    data['process_rate'] = this.processRate;
    data['process_value'] = this.processValue;
    return data;
  }
}

class AlloyDetails {
  int? llcAppStyleAlloyCode;
  int? llcAppStyleMetalCode;
  int? llcAppStyleCode;
  int? alloyCode;
  String? alloy;
  int? subAlloyCode;
  String? subAlloy;
  int? finenessCode;
  double? fineness;

  AlloyDetails(
      {this.llcAppStyleAlloyCode,
        this.llcAppStyleMetalCode,
        this.llcAppStyleCode,
        this.alloyCode,
        this.alloy,
        this.subAlloyCode,
        this.subAlloy,
        this.finenessCode,
        this.fineness});

  AlloyDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleAlloyCode = json['llc_app_style_alloy_code'];
    llcAppStyleMetalCode = json['llc_app_style_metal_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    alloyCode = json['alloy_code'];
    alloy = json['alloy'];
    subAlloyCode = json['sub_alloy_code'];
    subAlloy = json['sub_alloy'];
    finenessCode = json['fineness_code'];
    fineness = json['fineness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_alloy_code'] = this.llcAppStyleAlloyCode;
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['alloy_code'] = this.alloyCode;
    data['alloy'] = this.alloy;
    data['sub_alloy_code'] = this.subAlloyCode;
    data['sub_alloy'] = this.subAlloy;
    data['fineness_code'] = this.finenessCode;
    data['fineness'] = this.fineness;
    return data;
  }
}

class ImageDetails {
  int? llcAppStylesImageCode;
  int? llcAppStyleCode;
  String? imageName;

  ImageDetails(
      {this.llcAppStylesImageCode, this.llcAppStyleCode, this.imageName});

  ImageDetails.fromJson(Map<String, dynamic> json) {
    llcAppStylesImageCode = json['llc_app_styles_image_code'];
    llcAppStyleCode = json['llc_app_style_code'];
    imageName = json['image_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_styles_image_code'] = this.llcAppStylesImageCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['image_name'] = this.imageName;
    return data;
  }
}
*/

class StyelDetailsModel {
  int? statusCode;
  Data? data;
  String? message;

  StyelDetailsModel({this.statusCode, this.data, this.message});

  StyelDetailsModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['StatusCode'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StatusCode'] = this.statusCode;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['Message'] = this.message;
    return data;
  }
}

class Data {
  List<StyleDetails>? styleDetails;

  Data({this.styleDetails});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['StyleDetails'] != null) {
      styleDetails = <StyleDetails>[];
      json['StyleDetails'].forEach((v) {
        styleDetails!.add(new StyleDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.styleDetails != null) {
      data['StyleDetails'] = this.styleDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// class StyleDetails {
//   int? llcAppStyleCode;
//   String? custStyleNo;
//   int? gsStyleCode;
//   String? gsStyleNo;
//   int? gsModelNoCode;
//   String? gsModelNo;
//   int? designNoCode;
//   String? designNo;
//   int? categoryCode;
//   String? category;
//   int? subCategoryCode;
//   String? subCategory;
//   int? genderCode;
//   String? gender;
//   int? eventCode;
//   String? event;
//   int? collectionCode;
//   String? collection;
//   double? grossWt;
//   double? finWt;
//   double? castingWt;
//   int? baseMetalCode;
//   String? baseMetal;
//   double? itemSize;
//   int? ringSizeCode;
//   double? ringSize;
//   double? csWt;
//   double? diaWt;
//   double? pennyWt;
//   int? customerCode;
//   int? designerNameCode;
//   String? designerName;
//   String? customerDesignNo;
//   String? styleRemarks;
//   String? referenceStyleNo;
//   List<MetalDetails>? metalDetails;
//   List<StoneDetails>? stoneDetails;
//   List<FindingDetails>? findingDetails;
//   List<ChargableDetails>? chargableDetails;
//   List<AlloyDetails>? alloyDetails;
//   List<ImageDetails>? imageDetails;

//   StyleDetails(
//       {this.llcAppStyleCode,
//       this.custStyleNo,
//       this.gsStyleCode,
//       this.gsStyleNo,
//       this.gsModelNoCode,
//       this.gsModelNo,
//       this.designNoCode,
//       this.designNo,
//       this.categoryCode,
//       this.category,
//       this.subCategoryCode,
//       this.subCategory,
//       this.genderCode,
//       this.gender,
//       this.eventCode,
//       this.event,
//       this.collectionCode,
//       this.collection,
//       this.grossWt,
//       this.finWt,
//       this.castingWt,
//       this.baseMetalCode,
//       this.baseMetal,
//       this.itemSize,
//       this.ringSizeCode,
//       this.ringSize,
//       this.csWt,
//       this.diaWt,
//       this.pennyWt,
//       this.customerCode,
//       this.designerNameCode,
//       this.designerName,
//       this.customerDesignNo,
//       this.styleRemarks,
//       this.referenceStyleNo,
//       this.metalDetails,
//       this.stoneDetails,
//       this.findingDetails,
//       this.chargableDetails,
//       this.alloyDetails,
//       this.imageDetails});

//   StyleDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStyleCode = json['llc_app_style_code'];
//     custStyleNo = json['cust_style_no'];
//     gsStyleCode = json['gs_style_code'];
//     gsStyleNo = json['gs_style_no'];
//     gsModelNoCode = json['gs_model_no_code'];
//     gsModelNo = json['gs_model_no'];
//     designNoCode = json['design_no_code'];
//     designNo = json['design_no'];
//     categoryCode = json['category_code'];
//     category = json['category'];
//     subCategoryCode = json['sub_category_code'];
//     subCategory = json['sub_category'];
//     genderCode = json['gender_code'];
//     gender = json['gender'];
//     eventCode = json['event_code'];
//     event = json['event'];
//     collectionCode = json['collection_code'];
//     collection = json['collection'];
//     grossWt = json['gross_wt'];
//     finWt = json['fin_wt'];
//     castingWt = json['casting_wt'];
//     baseMetalCode = json['base_metal_code'];
//     baseMetal = json['base_metal'];
//     itemSize = json['item_size'];
//     ringSizeCode = json['ring_size_code'];
//     ringSize = json['ring_size'];
//     csWt = json['cs_wt'];
//     diaWt = json['dia_wt'];
//     pennyWt = json['penny_wt'];
//     customerCode = json['customer_code'];
//     designerNameCode = json['designer_name_code'];
//     designerName = json['designer_name'];
//     customerDesignNo = json['customer_design_no'];
//     styleRemarks = json['style_remarks'];
//     referenceStyleNo = json['reference_style_no'];
//     if (json['MetalDetails'] != null) {
//       metalDetails = <MetalDetails>[];
//       json['MetalDetails'].forEach((v) {
//         metalDetails!.add(new MetalDetails.fromJson(v));
//       });
//     }
//     if (json['StoneDetails'] != null) {
//       stoneDetails = <StoneDetails>[];
//       json['StoneDetails'].forEach((v) {
//         stoneDetails!.add(new StoneDetails.fromJson(v));
//       });
//     }
//     if (json['FindingDetails'] != null) {
//       findingDetails = <FindingDetails>[];
//       json['FindingDetails'].forEach((v) {
//         findingDetails!.add(new FindingDetails.fromJson(v));
//       });
//     }
//     if (json['chargableDetails'] != null) {
//       chargableDetails = <ChargableDetails>[];
//       json['chargableDetails'].forEach((v) {
//         chargableDetails!.add(new ChargableDetails.fromJson(v));
//       });
//     }
//     if (json['AlloyDetails'] != null) {
//       alloyDetails = <AlloyDetails>[];
//       json['AlloyDetails'].forEach((v) {
//         alloyDetails!.add(new AlloyDetails.fromJson(v));
//       });
//     }
//     if (json['ImageDetails'] != null) {
//       imageDetails = <ImageDetails>[];
//       json['ImageDetails'].forEach((v) {
//         imageDetails!.add(new ImageDetails.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['cust_style_no'] = this.custStyleNo;
//     data['gs_style_code'] = this.gsStyleCode;
//     data['gs_style_no'] = this.gsStyleNo;
//     data['gs_model_no_code'] = this.gsModelNoCode;
//     data['gs_model_no'] = this.gsModelNo;
//     data['design_no_code'] = this.designNoCode;
//     data['design_no'] = this.designNo;
//     data['category_code'] = this.categoryCode;
//     data['category'] = this.category;
//     data['sub_category_code'] = this.subCategoryCode;
//     data['sub_category'] = this.subCategory;
//     data['gender_code'] = this.genderCode;
//     data['gender'] = this.gender;
//     data['event_code'] = this.eventCode;
//     data['event'] = this.event;
//     data['collection_code'] = this.collectionCode;
//     data['collection'] = this.collection;
//     data['gross_wt'] = this.grossWt;
//     data['fin_wt'] = this.finWt;
//     data['casting_wt'] = this.castingWt;
//     data['base_metal_code'] = this.baseMetalCode;
//     data['base_metal'] = this.baseMetal;
//     data['item_size'] = this.itemSize;
//     data['ring_size_code'] = this.ringSizeCode;
//     data['ring_size'] = this.ringSize;
//     data['cs_wt'] = this.csWt;
//     data['dia_wt'] = this.diaWt;
//     data['penny_wt'] = this.pennyWt;
//     data['customer_code'] = this.customerCode;
//     data['designer_name_code'] = this.designerNameCode;
//     data['designer_name'] = this.designerName;
//     data['customer_design_no'] = this.customerDesignNo;
//     data['style_remarks'] = this.styleRemarks;
//     data['reference_style_no'] = this.referenceStyleNo;
//     if (this.metalDetails != null) {
//       data['MetalDetails'] = this.metalDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.stoneDetails != null) {
//       data['StoneDetails'] = this.stoneDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.findingDetails != null) {
//       data['FindingDetails'] =
//           this.findingDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.chargableDetails != null) {
//       data['chargableDetails'] =
//           this.chargableDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.alloyDetails != null) {
//       data['AlloyDetails'] = this.alloyDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.imageDetails != null) {
//       data['ImageDetails'] = this.imageDetails!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

//The above class is commented by vedant and new class will be created down so that all are string

class StyleDetails {
  String? llcAppStyleCode;
  String? custStyleNo;
  String? gsStyleCode;
  String? gsStyleNo;
  String? gsModelNoCode;
  String? gsModelNo;
  String? designNoCode;
  String? designNo;
  String? categoryCode;
  String? category;
  String? subCategoryCode;
  String? subCategory;
  String? genderCode;
  String? gender;
  String? eventCode;
  String? event;
  String? collectionCode;
  String? collection;
  String? grossWt;
  String? finWt;
  String? castingWt;
  String? baseMetalCode;
  String? baseMetal;
  String? itemSize;
  String? ringSizeCode;
  String? ringSize;
  String? csWt;
  String? diaWt;
  String? pennyWt;
  String? customerCode;
  String? designerNameCode;
  String? designerName;
  String? customerDesignNo;
  String? styleRemarks;
  String? referenceStyleNo;
  List<MetalDetails>? metalDetails;
  List<StoneDetails>? stoneDetails;
  List<FindingDetails>? findingDetails;
  List<ChargableDetails>? chargableDetails;
  List<AlloyDetails>? alloyDetails;
  List<ImageDetails>? imageDetails;

  StyleDetails(
      {this.llcAppStyleCode,
      this.custStyleNo,
      this.gsStyleCode,
      this.gsStyleNo,
      this.gsModelNoCode,
      this.gsModelNo,
      this.designNoCode,
      this.designNo,
      this.categoryCode,
      this.category,
      this.subCategoryCode,
      this.subCategory,
      this.genderCode,
      this.gender,
      this.eventCode,
      this.event,
      this.collectionCode,
      this.collection,
      this.grossWt,
      this.finWt,
      this.castingWt,
      this.baseMetalCode,
      this.baseMetal,
      this.itemSize,
      this.ringSizeCode,
      this.ringSize,
      this.csWt,
      this.diaWt,
      this.pennyWt,
      this.customerCode,
      this.designerNameCode,
      this.designerName,
      this.customerDesignNo,
      this.styleRemarks,
      this.referenceStyleNo,
      this.metalDetails,
      this.stoneDetails,
      this.findingDetails,
      this.chargableDetails,
      this.alloyDetails,
      this.imageDetails});

  StyleDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleCode = json['llc_app_style_code'].toString();
    custStyleNo = json['cust_style_no'].toString();
    gsStyleCode = json['gs_style_code'].toString();
    gsStyleNo = json['gs_style_no'].toString();
    gsModelNoCode = json['gs_model_no_code'].toString();
    gsModelNo = json['gs_model_no'].toString();
    designNoCode = json['design_no_code'].toString();
    designNo = json['design_no'].toString();
    categoryCode = json['category_code'].toString();
    category = json['category'].toString();
    subCategoryCode = json['sub_category_code'].toString();
    subCategory = json['sub_category'].toString();
    genderCode = json['gender_code'].toString();
    gender = json['gender'].toString();
    eventCode = json['event_code'].toString();
    event = json['event'].toString();
    collectionCode = json['collection_code'].toString();
    collection = json['collection'].toString();
    grossWt = json['gross_wt'].toString();
    finWt = json['fin_wt'].toString();
    castingWt = json['casting_wt'].toString();
    baseMetalCode = json['base_metal_code'].toString();
    baseMetal = json['base_metal'].toString();
    itemSize = json['item_size'].toString();
    ringSizeCode = json['ring_size_code'].toString();
    ringSize = json['ring_size'].toString();
    csWt = json['cs_wt'].toString();
    diaWt = json['dia_wt'].toString();
    pennyWt = json['penny_wt'].toString();
    customerCode = json['customer_code'].toString();
    designerNameCode = json['designer_name_code'].toString();
    designerName = json['designer_name'].toString();
    customerDesignNo = json['customer_design_no'].toString();
    styleRemarks = json['style_remarks'].toString();
    referenceStyleNo = json['reference_style_no'].toString();
    if (json['MetalDetails'] != null) {
      metalDetails = <MetalDetails>[];
      json['MetalDetails'].forEach((v) {
        metalDetails!.add(new MetalDetails.fromJson(v));
      });
    }
    if (json['StoneDetails'] != null) {
      stoneDetails = <StoneDetails>[];
      json['StoneDetails'].forEach((v) {
        stoneDetails!.add(new StoneDetails.fromJson(v));
      });
    }
    if (json['FindingDetails'] != null) {
      findingDetails = <FindingDetails>[];
      json['FindingDetails'].forEach((v) {
        findingDetails!.add(new FindingDetails.fromJson(v));
      });
    }
    if (json['chargableDetails'] != null) {
      chargableDetails = <ChargableDetails>[];
      json['chargableDetails'].forEach((v) {
        chargableDetails!.add(new ChargableDetails.fromJson(v));
      });
    }
    if (json['AlloyDetails'] != null) {
      alloyDetails = <AlloyDetails>[];
      json['AlloyDetails'].forEach((v) {
        alloyDetails!.add(new AlloyDetails.fromJson(v));
      });
    }
    if (json['ImageDetails'] != null) {
      imageDetails = <ImageDetails>[];
      json['ImageDetails'].forEach((v) {
        imageDetails!.add(new ImageDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['cust_style_no'] = this.custStyleNo;
    data['gs_style_code'] = this.gsStyleCode;
    data['gs_style_no'] = this.gsStyleNo;
    data['gs_model_no_code'] = this.gsModelNoCode;
    data['gs_model_no'] = this.gsModelNo;
    data['design_no_code'] = this.designNoCode;
    data['design_no'] = this.designNo;
    data['category_code'] = this.categoryCode;
    data['category'] = this.category;
    data['sub_category_code'] = this.subCategoryCode;
    data['sub_category'] = this.subCategory;
    data['gender_code'] = this.genderCode;
    data['gender'] = this.gender;
    data['event_code'] = this.eventCode;
    data['event'] = this.event;
    data['collection_code'] = this.collectionCode;
    data['collection'] = this.collection;
    data['gross_wt'] = this.grossWt;
    data['fin_wt'] = this.finWt;
    data['casting_wt'] = this.castingWt;
    data['base_metal_code'] = this.baseMetalCode;
    data['base_metal'] = this.baseMetal;
    data['item_size'] = this.itemSize;
    data['ring_size_code'] = this.ringSizeCode;
    data['ring_size'] = this.ringSize;
    data['cs_wt'] = this.csWt;
    data['dia_wt'] = this.diaWt;
    data['penny_wt'] = this.pennyWt;
    data['customer_code'] = this.customerCode;
    data['designer_name_code'] = this.designerNameCode;
    data['designer_name'] = this.designerName;
    data['customer_design_no'] = this.customerDesignNo;
    data['style_remarks'] = this.styleRemarks;
    data['reference_style_no'] = this.referenceStyleNo;
    if (this.metalDetails != null) {
      data['MetalDetails'] = this.metalDetails!.map((v) => v.toJson()).toList();
    }
    if (this.stoneDetails != null) {
      data['StoneDetails'] = this.stoneDetails!.map((v) => v.toJson()).toList();
    }
    if (this.findingDetails != null) {
      data['FindingDetails'] =
          this.findingDetails!.map((v) => v.toJson()).toList();
    }
    if (this.chargableDetails != null) {
      data['chargableDetails'] =
          this.chargableDetails!.map((v) => v.toJson()).toList();
    }
    if (this.alloyDetails != null) {
      data['AlloyDetails'] = this.alloyDetails!.map((v) => v.toJson()).toList();
    }
    if (this.imageDetails != null) {
      data['ImageDetails'] = this.imageDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// class MetalDetails {
//   int? llcAppStyleMetalCode;
//   int? llcAppStyleCode;
//   int? srNo;
//   int? metalTypeCode;
//   String? metalType;
//   int? colorCode;
//   String? color;
//   int? finenessCode;
//   double? fineness;
//   double? finWt;
//   String? mountWt;
//   double? castWt;
//   double? pennyWt;
//   double? waxWt;

//   MetalDetails(
//       {this.llcAppStyleMetalCode,
//       this.llcAppStyleCode,
//       this.srNo,
//       this.metalTypeCode,
//       this.metalType,
//       this.colorCode,
//       this.color,
//       this.finenessCode,
//       this.fineness,
//       this.finWt,
//       this.mountWt,
//       this.castWt,
//       this.pennyWt,
//       this.waxWt});

//   MetalDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStyleMetalCode = json['llc_app_style_metal_code'];
//     llcAppStyleCode = json['llc_app_style_code'];
//     srNo = json['sr_no'];
//     metalTypeCode = json['metal_type_code'];
//     metalType = json['metal_type'];
//     colorCode = json['Color_code'];
//     color = json['Color'];
//     finenessCode = json['fineness_Code'];
//     fineness = json['fineness'];
//     finWt = json['fin_Wt'];
//     mountWt = json['mount_wt'];
//     castWt = json['cast_wt'];
//     pennyWt = json['penny_wt'];
//     waxWt = json['wax_wt'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['sr_no'] = this.srNo;
//     data['metal_type_code'] = this.metalTypeCode;
//     data['metal_type'] = this.metalType;
//     data['Color_code'] = this.colorCode;
//     data['Color'] = this.color;
//     data['fineness_Code'] = this.finenessCode;
//     data['fineness'] = this.fineness;
//     data['fin_Wt'] = this.finWt;
//     data['mount_wt'] = this.mountWt;
//     data['cast_wt'] = this.castWt;
//     data['penny_wt'] = this.pennyWt;
//     data['wax_wt'] = this.waxWt;
//     return data;
//   }
// }

//Same as Above

class MetalDetails {
  String? llcAppStyleMetalCode;
  String? llcAppStyleCode;
  String? srNo;
  String? metalTypeCode;
  String? metalType;
  String? colorCode;
  String? color;
  String? finenessCode;
  String? fineness;
  String? finWt;
  String? mountWt;
  String? castWt;
  String? pennyWt;
  String? waxWt;

  MetalDetails(
      {this.llcAppStyleMetalCode,
      this.llcAppStyleCode,
      this.srNo,
      this.metalTypeCode,
      this.metalType,
      this.colorCode,
      this.color,
      this.finenessCode,
      this.fineness,
      this.finWt,
      this.mountWt,
      this.castWt,
      this.pennyWt,
      this.waxWt});

  MetalDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleMetalCode = json['llc_app_style_metal_code'].toString();
    llcAppStyleCode = json['llc_app_style_code'].toString();
    srNo = json['sr_no'].toString();
    metalTypeCode = json['metal_type_code'].toString();
    metalType = json['metal_type'].toString();
    colorCode = json['Color_code'].toString();
    color = json['Color'].toString();
    finenessCode = json['fineness_Code'].toString();
    fineness = json['fineness'].toString();
    finWt = json['fin_Wt'].toString();
    mountWt = json['mount_wt'].toString();
    castWt = json['cast_wt'].toString();
    pennyWt = json['penny_wt'].toString();
    waxWt = json['wax_wt'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['sr_no'] = this.srNo;
    data['metal_type_code'] = this.metalTypeCode;
    data['metal_type'] = this.metalType;
    data['Color_code'] = this.colorCode;
    data['Color'] = this.color;
    data['fineness_Code'] = this.finenessCode;
    data['fineness'] = this.fineness;
    data['fin_Wt'] = this.finWt;
    data['mount_wt'] = this.mountWt;
    data['cast_wt'] = this.castWt;
    data['penny_wt'] = this.pennyWt;
    data['wax_wt'] = this.waxWt;
    return data;
  }
}

// class StoneDetails {
//   int? llcAppStyleStoneCode;
//   int? llcAppStyleMetalCode;
//   int? llcAppStyleCode;
//   int? metalSrNo;
//   int? stoneTypeCode;
//   String? stoneType;
//   int? shapeCode;
//   String? shape;
//   int? gradeCode;
//   String? grade;
//   int? qualityCode;
//   String? quality;
//   double? size;
//   double? mmLength;
//   double? mmBreadth;
//   int? stoneQty;
//   double? diaWt;
//   int? settingTypeCode;
//   String? settingType;
//   int? settingModeCode;
//   String? settingMode;
//   int? prodSettingTypeCode;
//   String? prodSettingType;
//   int? prodSettingModeCode;
//   String? prodSettingMode;
//   bool? isCenterStone;
//   double? minDiaWt;
//   double? maxDiaWt;
//   String? minDiaStones;
//   String? maxDiaStones;
//   String? removableStone;
//   bool? exactSize;
//   String? stoneRemarks;

//   StoneDetails(
//       {this.llcAppStyleStoneCode,
//       this.llcAppStyleMetalCode,
//       this.llcAppStyleCode,
//       this.metalSrNo,
//       this.stoneTypeCode,
//       this.stoneType,
//       this.shapeCode,
//       this.shape,
//       this.gradeCode,
//       this.grade,
//       this.qualityCode,
//       this.quality,
//       this.size,
//       this.mmLength,
//       this.mmBreadth,
//       this.stoneQty,
//       this.diaWt,
//       this.settingTypeCode,
//       this.settingType,
//       this.settingModeCode,
//       this.settingMode,
//       this.prodSettingTypeCode,
//       this.prodSettingType,
//       this.prodSettingModeCode,
//       this.prodSettingMode,
//       this.isCenterStone,
//       this.minDiaWt,
//       this.maxDiaWt,
//       this.minDiaStones,
//       this.maxDiaStones,
//       this.removableStone,
//       this.exactSize,
//       this.stoneRemarks});

//   StoneDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStyleStoneCode = json['llc_app_style_stone_code'];
//     llcAppStyleMetalCode = json['llc_app_style_metal_code'];
//     llcAppStyleCode = json['llc_app_style_code'];
//     metalSrNo = json['metal_sr_no'];
//     stoneTypeCode = json['stone_type_code'];
//     stoneType = json['stone_type'];
//     shapeCode = json['shape_code'];
//     shape = json['shape'];
//     gradeCode = json['grade_code'];
//     grade = json['grade'];
//     qualityCode = json['quality_code'];
//     quality = json['quality'];
//     size = json['size'];
//     mmLength = json['mm_length'];
//     mmBreadth = json['mm_breadth'];
//     stoneQty = json['stone_qty'];
//     diaWt = json['dia_wt'];
//     settingTypeCode = json['setting_type_Code'];
//     settingType = json['setting_type'];
//     settingModeCode = json['setting_mode_code'];
//     settingMode = json['setting_mode'];
//     prodSettingTypeCode = json['prod_setting_type_Code'];
//     prodSettingType = json['prod_setting_type'];
//     prodSettingModeCode = json['prod_setting_mode_code'];
//     prodSettingMode = json['prod_setting_mode'];
//     isCenterStone = json['is_center_stone'];
//     minDiaWt = json['min_dia_wt'];
//     maxDiaWt = json['max_dia_wt'];
//     minDiaStones = json['min_dia_stones'];
//     maxDiaStones = json['max_dia_stones'];
//     removableStone = json['removable_stone'];
//     exactSize = json['exact_size'];
//     stoneRemarks = json['Stone_remarks'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_style_stone_code'] = this.llcAppStyleStoneCode;
//     data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['metal_sr_no'] = this.metalSrNo;
//     data['stone_type_code'] = this.stoneTypeCode;
//     data['stone_type'] = this.stoneType;
//     data['shape_code'] = this.shapeCode;
//     data['shape'] = this.shape;
//     data['grade_code'] = this.gradeCode;
//     data['grade'] = this.grade;
//     data['quality_code'] = this.qualityCode;
//     data['quality'] = this.quality;
//     data['size'] = this.size;
//     data['mm_length'] = this.mmLength;
//     data['mm_breadth'] = this.mmBreadth;
//     data['stone_qty'] = this.stoneQty;
//     data['dia_wt'] = this.diaWt;
//     data['setting_type_Code'] = this.settingTypeCode;
//     data['setting_type'] = this.settingType;
//     data['setting_mode_code'] = this.settingModeCode;
//     data['setting_mode'] = this.settingMode;
//     data['prod_setting_type_Code'] = this.prodSettingTypeCode;
//     data['prod_setting_type'] = this.prodSettingType;
//     data['prod_setting_mode_code'] = this.prodSettingModeCode;
//     data['prod_setting_mode'] = this.prodSettingMode;
//     data['is_center_stone'] = this.isCenterStone;
//     data['min_dia_wt'] = this.minDiaWt;
//     data['max_dia_wt'] = this.maxDiaWt;
//     data['min_dia_stones'] = this.minDiaStones;
//     data['max_dia_stones'] = this.maxDiaStones;
//     data['removable_stone'] = this.removableStone;
//     data['exact_size'] = this.exactSize;
//     data['Stone_remarks'] = this.stoneRemarks;
//     return data;
//   }
// }

//Same as Above

class StoneDetails {
  String? llcAppStyleStoneCode;
  String? llcAppStyleMetalCode;
  String? llcAppStyleCode;
  String? metalSrNo;
  String? stoneTypeCode;
  String? stoneType;
  String? shapeCode;
  String? shape;
  String? gradeCode;
  String? grade;
  String? qualityCode;
  String? quality;
  String? size;
  String? mmLength;
  String? mmBreadth;
  String? stoneQty;
  String? diaWt;
  String? settingTypeCode;
  String? settingType;
  String? settingModeCode;
  String? settingMode;
  String? prodSettingTypeCode;
  String? prodSettingType;
  String? prodSettingModeCode;
  String? prodSettingMode;
  String? isCenterStone;
  String? minDiaWt;
  String? maxDiaWt;
  String? minDiaStones;
  String? maxDiaStones;
  String? removableStone;
  String? exactSize;
  String? stoneRemarks;

  StoneDetails(
      {this.llcAppStyleStoneCode,
      this.llcAppStyleMetalCode,
      this.llcAppStyleCode,
      this.metalSrNo,
      this.stoneTypeCode,
      this.stoneType,
      this.shapeCode,
      this.shape,
      this.gradeCode,
      this.grade,
      this.qualityCode,
      this.quality,
      this.size,
      this.mmLength,
      this.mmBreadth,
      this.stoneQty,
      this.diaWt,
      this.settingTypeCode,
      this.settingType,
      this.settingModeCode,
      this.settingMode,
      this.prodSettingTypeCode,
      this.prodSettingType,
      this.prodSettingModeCode,
      this.prodSettingMode,
      this.isCenterStone,
      this.minDiaWt,
      this.maxDiaWt,
      this.minDiaStones,
      this.maxDiaStones,
      this.removableStone,
      this.exactSize,
      this.stoneRemarks});

  StoneDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleStoneCode = json['llc_app_style_stone_code'].toString();
    llcAppStyleMetalCode = json['llc_app_style_metal_code'].toString();
    llcAppStyleCode = json['llc_app_style_code'].toString();
    metalSrNo = json['metal_sr_no'].toString();
    stoneTypeCode = json['stone_type_code'].toString();
    stoneType = json['stone_type'].toString();
    shapeCode = json['shape_code'].toString();
    shape = json['shape'].toString();
    gradeCode = json['grade_code'].toString();
    grade = json['grade'].toString();
    qualityCode = json['quality_code'].toString();
    quality = json['quality'].toString();
    size = json['size'].toString();
    mmLength = json['mm_length'].toString();
    mmBreadth = json['mm_breadth'].toString();
    stoneQty = json['stone_qty'].toString();
    diaWt = json['dia_wt'].toString();
    settingTypeCode = json['setting_type_Code'].toString();
    settingType = json['setting_type'].toString();
    settingModeCode = json['setting_mode_code'].toString();
    settingMode = json['setting_mode'].toString();
    prodSettingTypeCode = json['prod_setting_type_Code'].toString();
    prodSettingType = json['prod_setting_type'].toString();
    prodSettingModeCode = json['prod_setting_mode_code'].toString();
    prodSettingMode = json['prod_setting_mode'].toString();
    isCenterStone = json['is_center_stone'].toString();
    minDiaWt = json['min_dia_wt'].toString();
    maxDiaWt = json['max_dia_wt'].toString();
    minDiaStones = json['min_dia_stones'].toString();
    maxDiaStones = json['max_dia_stones'].toString();
    removableStone = json['removable_stone'].toString();
    exactSize = json['exact_size'].toString();
    stoneRemarks = json['Stone_remarks'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_stone_code'] = this.llcAppStyleStoneCode;
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['metal_sr_no'] = this.metalSrNo;
    data['stone_type_code'] = this.stoneTypeCode;
    data['stone_type'] = this.stoneType;
    data['shape_code'] = this.shapeCode;
    data['shape'] = this.shape;
    data['grade_code'] = this.gradeCode;
    data['grade'] = this.grade;
    data['quality_code'] = this.qualityCode;
    data['quality'] = this.quality;
    data['size'] = this.size;
    data['mm_length'] = this.mmLength;
    data['mm_breadth'] = this.mmBreadth;
    data['stone_qty'] = this.stoneQty;
    data['dia_wt'] = this.diaWt;
    data['setting_type_Code'] = this.settingTypeCode;
    data['setting_type'] = this.settingType;
    data['setting_mode_code'] = this.settingModeCode;
    data['setting_mode'] = this.settingMode;
    data['prod_setting_type_Code'] = this.prodSettingTypeCode;
    data['prod_setting_type'] = this.prodSettingType;
    data['prod_setting_mode_code'] = this.prodSettingModeCode;
    data['prod_setting_mode'] = this.prodSettingMode;
    data['is_center_stone'] = this.isCenterStone;
    data['min_dia_wt'] = this.minDiaWt;
    data['max_dia_wt'] = this.maxDiaWt;
    data['min_dia_stones'] = this.minDiaStones;
    data['max_dia_stones'] = this.maxDiaStones;
    data['removable_stone'] = this.removableStone;
    data['exact_size'] = this.exactSize;
    data['Stone_remarks'] = this.stoneRemarks;
    return data;
  }
}

// class FindingDetails {
//   int? llcAppStyleFindingCode;
//   int? llcAppStyleCode;
//   int? findingCode;
//   String? finding;
//   int? subFindingCode;
//   String? subFinding;
//   int? metalCode;
//   String? metal;
//   int? metalKtCode;
//   double? metalKt;
//   double? weight;
//   int? qty;
//   double? rate;
//   double? findingcost;

//   FindingDetails(
//       {this.llcAppStyleFindingCode,
//       this.llcAppStyleCode,
//       this.findingCode,
//       this.finding,
//       this.subFindingCode,
//       this.subFinding,
//       this.metalCode,
//       this.metal,
//       this.metalKtCode,
//       this.metalKt,
//       this.weight,
//       this.qty,
//       this.rate,
//       this.findingcost});

//   FindingDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStyleFindingCode = json['llc_app_style_finding_code'];
//     llcAppStyleCode = json['llc_app_style_code'];
//     findingCode = json['finding_code'];
//     finding = json['finding'];
//     subFindingCode = json['sub_finding_code'];
//     subFinding = json['sub_finding'];
//     metalCode = json['metal_code'];
//     metal = json['metal'];
//     metalKtCode = json['metal_kt_code'];
//     metalKt = json['metal_kt'];
//     weight = json['weight'];
//     qty = json['qty'];
//     rate = json['rate'];
//     findingcost = json['Findingcost'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_style_finding_code'] = this.llcAppStyleFindingCode;
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['finding_code'] = this.findingCode;
//     data['finding'] = this.finding;
//     data['sub_finding_code'] = this.subFindingCode;
//     data['sub_finding'] = this.subFinding;
//     data['metal_code'] = this.metalCode;
//     data['metal'] = this.metal;
//     data['metal_kt_code'] = this.metalKtCode;
//     data['metal_kt'] = this.metalKt;
//     data['weight'] = this.weight;
//     data['qty'] = this.qty;
//     data['rate'] = this.rate;
//     data['Findingcost'] = this.findingcost;
//     return data;
//   }
// }

//Same as Above

class FindingDetails {
  String? llcAppStyleFindingCode;
  String? llcAppStyleCode;
  String? findingCode;
  String? finding;
  String? subFindingCode;
  String? subFinding;
  String? metalCode;
  String? metal;
  String? metalKtCode;
  String? metalKt;
  String? weight;
  String? qty;
  String? rate;
  String? findingcost;

  FindingDetails(
      {this.llcAppStyleFindingCode,
      this.llcAppStyleCode,
      this.findingCode,
      this.finding,
      this.subFindingCode,
      this.subFinding,
      this.metalCode,
      this.metal,
      this.metalKtCode,
      this.metalKt,
      this.weight,
      this.qty,
      this.rate,
      this.findingcost});

  FindingDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleFindingCode = json['llc_app_style_finding_code'].toString();
    llcAppStyleCode = json['llc_app_style_code'].toString();
    findingCode = json['finding_code'].toString();
    finding = json['finding'].toString();
    subFindingCode = json['sub_finding_code'].toString();
    subFinding = json['sub_finding'].toString();
    metalCode = json['metal_code'].toString();
    metal = json['metal'].toString();
    metalKtCode = json['metal_kt_code'].toString();
    metalKt = json['metal_kt'].toString();
    weight = json['weight'].toString();
    qty = json['qty'].toString();
    rate = json['rate'].toString();
    findingcost = json['Findingcost'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_finding_code'] = this.llcAppStyleFindingCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['finding_code'] = this.findingCode;
    data['finding'] = this.finding;
    data['sub_finding_code'] = this.subFindingCode;
    data['sub_finding'] = this.subFinding;
    data['metal_code'] = this.metalCode;
    data['metal'] = this.metal;
    data['metal_kt_code'] = this.metalKtCode;
    data['metal_kt'] = this.metalKt;
    data['weight'] = this.weight;
    data['qty'] = this.qty;
    data['rate'] = this.rate;
    data['Findingcost'] = this.findingcost;
    return data;
  }
}

// class ChargableDetails {
//   int? llcAppStyleChargeblesCode;
//   int? llcAppStyleCode;
//   int? llcAppStyleMetalCode;
//   int? processTypeCode;
//   String? processType;
//   int? processNameCode;
//   String? processName;
//   double? processRate;
//   double? processValue;

//   ChargableDetails(
//       {this.llcAppStyleChargeblesCode,
//       this.llcAppStyleCode,
//       this.llcAppStyleMetalCode,
//       this.processTypeCode,
//       this.processType,
//       this.processNameCode,
//       this.processName,
//       this.processRate,
//       this.processValue});

//   ChargableDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStyleChargeblesCode = json['llc_app_style_chargebles_code'];
//     llcAppStyleCode = json['llc_app_style_code'];
//     llcAppStyleMetalCode = json['llc_app_style_metal_code'];
//     processTypeCode = json['process_type_code'];
//     processType = json['process_type'];
//     processNameCode = json['process_name_code'];
//     processName = json['process_name'];
//     processRate = json['process_rate'];
//     processValue = json['process_value'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_style_chargebles_code'] = this.llcAppStyleChargeblesCode;
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
//     data['process_type_code'] = this.processTypeCode;
//     data['process_type'] = this.processType;
//     data['process_name_code'] = this.processNameCode;
//     data['process_name'] = this.processName;
//     data['process_rate'] = this.processRate;
//     data['process_value'] = this.processValue;
//     return data;
//   }
// }

//Same as Above

class ChargableDetails {
  String? llcAppStyleChargeblesCode;
  String? llcAppStyleCode;
  String? llcAppStyleMetalCode;
  String? processTypeCode;
  String? processType;
  String? processNameCode;
  String? processName;
  String? processRate;
  String? processValue;

  ChargableDetails(
      {this.llcAppStyleChargeblesCode,
      this.llcAppStyleCode,
      this.llcAppStyleMetalCode,
      this.processTypeCode,
      this.processType,
      this.processNameCode,
      this.processName,
      this.processRate,
      this.processValue});

  ChargableDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleChargeblesCode =
        json['llc_app_style_chargebles_code'].toString();
    llcAppStyleCode = json['llc_app_style_code'].toString();
    llcAppStyleMetalCode = json['llc_app_style_metal_code'].toString();
    processTypeCode = json['process_type_code'].toString();
    processType = json['process_type'].toString();
    processNameCode = json['process_name_code'].toString();
    processName = json['process_name'].toString();
    processRate = json['process_rate'].toString();
    processValue = json['process_value'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_chargebles_code'] = this.llcAppStyleChargeblesCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['process_type_code'] = this.processTypeCode;
    data['process_type'] = this.processType;
    data['process_name_code'] = this.processNameCode;
    data['process_name'] = this.processName;
    data['process_rate'] = this.processRate;
    data['process_value'] = this.processValue;
    return data;
  }
}

// class AlloyDetails {
//   int? llcAppStyleAlloyCode;
//   int? llcAppStyleMetalCode;
//   int? llcAppStyleCode;
//   int? alloyCode;
//   String? alloy;
//   int? subAlloyCode;
//   String? subAlloy;
//   int? finenessCode;
//   double? fineness;

//   AlloyDetails(
//       {this.llcAppStyleAlloyCode,
//       this.llcAppStyleMetalCode,
//       this.llcAppStyleCode,
//       this.alloyCode,
//       this.alloy,
//       this.subAlloyCode,
//       this.subAlloy,
//       this.finenessCode,
//       this.fineness});

//   AlloyDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStyleAlloyCode = json['llc_app_style_alloy_code'];
//     llcAppStyleMetalCode = json['llc_app_style_metal_code'];
//     llcAppStyleCode = json['llc_app_style_code'];
//     alloyCode = json['alloy_code'];
//     alloy = json['alloy'];
//     subAlloyCode = json['sub_alloy_code'];
//     subAlloy = json['sub_alloy'];
//     finenessCode = json['fineness_code'];
//     fineness = json['fineness'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_style_alloy_code'] = this.llcAppStyleAlloyCode;
//     data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['alloy_code'] = this.alloyCode;
//     data['alloy'] = this.alloy;
//     data['sub_alloy_code'] = this.subAlloyCode;
//     data['sub_alloy'] = this.subAlloy;
//     data['fineness_code'] = this.finenessCode;
//     data['fineness'] = this.fineness;
//     return data;
//   }
// }

//Same as Above

class AlloyDetails {
  String? llcAppStyleAlloyCode;
  String? llcAppStyleMetalCode;
  String? llcAppStyleCode;
  String? alloyCode;
  String? alloy;
  String? subAlloyCode;
  String? subAlloy;
  String? finenessCode;
  String? fineness;

  AlloyDetails(
      {this.llcAppStyleAlloyCode,
      this.llcAppStyleMetalCode,
      this.llcAppStyleCode,
      this.alloyCode,
      this.alloy,
      this.subAlloyCode,
      this.subAlloy,
      this.finenessCode,
      this.fineness});

  AlloyDetails.fromJson(Map<String, dynamic> json) {
    llcAppStyleAlloyCode = json['llc_app_style_alloy_code'].toString();
    llcAppStyleMetalCode = json['llc_app_style_metal_code'].toString();
    llcAppStyleCode = json['llc_app_style_code'].toString();
    alloyCode = json['alloy_code'].toString();
    alloy = json['alloy'].toString();
    subAlloyCode = json['sub_alloy_code'].toString();
    subAlloy = json['sub_alloy'].toString();
    finenessCode = json['fineness_code'].toString();
    fineness = json['fineness'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_style_alloy_code'] = this.llcAppStyleAlloyCode;
    data['llc_app_style_metal_code'] = this.llcAppStyleMetalCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['alloy_code'] = this.alloyCode;
    data['alloy'] = this.alloy;
    data['sub_alloy_code'] = this.subAlloyCode;
    data['sub_alloy'] = this.subAlloy;
    data['fineness_code'] = this.finenessCode;
    data['fineness'] = this.fineness;
    return data;
  }
}

// class ImageDetails {
//   int? llcAppStylesImageCode;
//   int? llcAppStyleCode;
//   String? imageName;

//   ImageDetails(
//       {this.llcAppStylesImageCode, this.llcAppStyleCode, this.imageName});

//   ImageDetails.fromJson(Map<String, dynamic> json) {
//     llcAppStylesImageCode = json['llc_app_styles_image_code'];
//     llcAppStyleCode = json['llc_app_style_code'];
//     imageName = json['image_name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['llc_app_styles_image_code'] = this.llcAppStylesImageCode;
//     data['llc_app_style_code'] = this.llcAppStyleCode;
//     data['image_name'] = this.imageName;
//     return data;
//   }
// }

//Same as Above

class ImageDetails {
  String? llcAppStylesImageCode;
  String? llcAppStyleCode;
  String? imageName;

  ImageDetails(
      {this.llcAppStylesImageCode, this.llcAppStyleCode, this.imageName});

  ImageDetails.fromJson(Map<String, dynamic> json) {
    llcAppStylesImageCode = json['llc_app_styles_image_code'].toString();
    llcAppStyleCode = json['llc_app_style_code'].toString();
    imageName = json['image_name'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['llc_app_styles_image_code'] = this.llcAppStylesImageCode;
    data['llc_app_style_code'] = this.llcAppStyleCode;
    data['image_name'] = this.imageName;
    return data;
  }
}
