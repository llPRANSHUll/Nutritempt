class dishesModel {
  List<Dishes>? dishes;

  dishesModel({this.dishes});

  dishesModel.fromJson(Map<String, dynamic> json) {
    if (json['dishes'] != null) {
      dishes = <Dishes>[];
      json['dishes'].forEach((v) {
        dishes!.add(new Dishes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dishes != null) {
      data['dishes'] = this.dishes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dishes {
  double? calories;
  String? image;
  List<String>? ingredients;
  String? lable;
  int? price;
  TotalNutrients? totalNutrients;
  String? url;

  Dishes(
      {this.calories,
      this.image,
      this.ingredients,
      this.lable,
      this.price,
      this.totalNutrients,
      this.url});

  Dishes.fromJson(Map<String, dynamic> json) {
    calories = json['calories'];
    image = json['image'];
    ingredients = json['ingredients'].cast<String>();
    lable = json['lable'];
    price = json['price'];
    totalNutrients = json['totalNutrients'] != null
        ? new TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calories'] = this.calories;
    data['image'] = this.image;
    data['ingredients'] = this.ingredients;
    data['lable'] = this.lable;
    data['price'] = this.price;
    if (this.totalNutrients != null) {
      data['totalNutrients'] = this.totalNutrients!.toJson();
    }
    data['url'] = this.url;
    return data;
  }
}

class TotalNutrients {
  CA? cA;
  CA? cHOCDF;
  CA? cHOCDFNet;
  CA? cHOLE;
  CA? eNERCKCAL;
  CA? fAMS;
  CA? fAPU;
  CA? fASAT;
  CA? fAT;
  CA? fATRN;
  CA? fE;
  CA? fIBTG;
  CA? fOLAC;
  CA? fOLDFE;
  CA? fOLFD;
  CA? k;
  CA? mG;
  CA? nA;
  CA? nIA;
  CA? p;
  CA? pROCNT;
  CA? rIBF;
  CA? sUGAR;
  CA? sUGARAdded;
  CA? tHIA;
  CA? tOCPHA;
  CA? vITARAE;
  CA? vITB12;
  CA? vITB6A;
  CA? vITC;
  CA? vITD;
  CA? vITK1;
  CA? wATER;
  CA? zN;

  TotalNutrients(
      {this.cA,
      this.cHOCDF,
      this.cHOCDFNet,
      this.cHOLE,
      this.eNERCKCAL,
      this.fAMS,
      this.fAPU,
      this.fASAT,
      this.fAT,
      this.fATRN,
      this.fE,
      this.fIBTG,
      this.fOLAC,
      this.fOLDFE,
      this.fOLFD,
      this.k,
      this.mG,
      this.nA,
      this.nIA,
      this.p,
      this.pROCNT,
      this.rIBF,
      this.sUGAR,
      this.sUGARAdded,
      this.tHIA,
      this.tOCPHA,
      this.vITARAE,
      this.vITB12,
      this.vITB6A,
      this.vITC,
      this.vITD,
      this.vITK1,
      this.wATER,
      this.zN});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    cA = json['CA'] != null ? new CA.fromJson(json['CA']) : null;
    cHOCDF = json['CHOCDF'] != null ? new CA.fromJson(json['CHOCDF']) : null;
    cHOCDFNet =
        json['CHOCDF.net'] != null ? new CA.fromJson(json['CHOCDF.net']) : null;
    cHOLE = json['CHOLE'] != null ? new CA.fromJson(json['CHOLE']) : null;
    eNERCKCAL =
        json['ENERC_KCAL'] != null ? new CA.fromJson(json['ENERC_KCAL']) : null;
    fAMS = json['FAMS'] != null ? new CA.fromJson(json['FAMS']) : null;
    fAPU = json['FAPU'] != null ? new CA.fromJson(json['FAPU']) : null;
    fASAT = json['FASAT'] != null ? new CA.fromJson(json['FASAT']) : null;
    fAT = json['FAT'] != null ? new CA.fromJson(json['FAT']) : null;
    fATRN = json['FATRN'] != null ? new CA.fromJson(json['FATRN']) : null;
    fE = json['FE'] != null ? new CA.fromJson(json['FE']) : null;
    fIBTG = json['FIBTG'] != null ? new CA.fromJson(json['FIBTG']) : null;
    fOLAC = json['FOLAC'] != null ? new CA.fromJson(json['FOLAC']) : null;
    fOLDFE = json['FOLDFE'] != null ? new CA.fromJson(json['FOLDFE']) : null;
    fOLFD = json['FOLFD'] != null ? new CA.fromJson(json['FOLFD']) : null;
    k = json['K'] != null ? new CA.fromJson(json['K']) : null;
    mG = json['MG'] != null ? new CA.fromJson(json['MG']) : null;
    nA = json['NA'] != null ? new CA.fromJson(json['NA']) : null;
    nIA = json['NIA'] != null ? new CA.fromJson(json['NIA']) : null;
    p = json['P'] != null ? new CA.fromJson(json['P']) : null;
    pROCNT = json['PROCNT'] != null ? new CA.fromJson(json['PROCNT']) : null;
    rIBF = json['RIBF'] != null ? new CA.fromJson(json['RIBF']) : null;
    sUGAR = json['SUGAR'] != null ? new CA.fromJson(json['SUGAR']) : null;
    sUGARAdded = json['SUGAR.added'] != null
        ? new CA.fromJson(json['SUGAR.added'])
        : null;
    tHIA = json['THIA'] != null ? new CA.fromJson(json['THIA']) : null;
    tOCPHA = json['TOCPHA'] != null ? new CA.fromJson(json['TOCPHA']) : null;
    vITARAE =
        json['VITA_RAE'] != null ? new CA.fromJson(json['VITA_RAE']) : null;
    vITB12 = json['VITB12'] != null ? new CA.fromJson(json['VITB12']) : null;
    vITB6A = json['VITB6A'] != null ? new CA.fromJson(json['VITB6A']) : null;
    vITC = json['VITC'] != null ? new CA.fromJson(json['VITC']) : null;
    vITD = json['VITD'] != null ? new CA.fromJson(json['VITD']) : null;
    vITK1 = json['VITK1'] != null ? new CA.fromJson(json['VITK1']) : null;
    wATER = json['WATER'] != null ? new CA.fromJson(json['WATER']) : null;
    zN = json['ZN'] != null ? new CA.fromJson(json['ZN']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cA != null) {
      data['CA'] = this.cA!.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF!.toJson();
    }
    if (this.cHOCDFNet != null) {
      data['CHOCDF.net'] = this.cHOCDFNet!.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE!.toJson();
    }
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL!.toJson();
    }
    if (this.fAMS != null) {
      data['FAMS'] = this.fAMS!.toJson();
    }
    if (this.fAPU != null) {
      data['FAPU'] = this.fAPU!.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT!.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT!.toJson();
    }
    if (this.fATRN != null) {
      data['FATRN'] = this.fATRN!.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE!.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG!.toJson();
    }
    if (this.fOLAC != null) {
      data['FOLAC'] = this.fOLAC!.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE!.toJson();
    }
    if (this.fOLFD != null) {
      data['FOLFD'] = this.fOLFD!.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k!.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG!.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA!.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA!.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p!.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT!.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF!.toJson();
    }
    if (this.sUGAR != null) {
      data['SUGAR'] = this.sUGAR!.toJson();
    }
    if (this.sUGARAdded != null) {
      data['SUGAR.added'] = this.sUGARAdded!.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA!.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA!.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE!.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12!.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A!.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC!.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD!.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1!.toJson();
    }
    if (this.wATER != null) {
      data['WATER'] = this.wATER!.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN!.toJson();
    }
    return data;
  }
}

class CA {
  String? label;
  double? quantity;
  String? unit;

  CA({this.label, this.quantity, this.unit});

  CA.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}
