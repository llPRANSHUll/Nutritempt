class MenuModal {
  List<Menu>? menu;

  MenuModal({this.menu});

  MenuModal.fromJson(Map<String, dynamic> json) {
    if (json['menu'] != null) {
      menu = <Menu>[];
      json['menu'].forEach((v) {
        menu!.add(new Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.menu != null) {
      data['menu'] = this.menu!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menu {
  int? avgTimeTaken;
  int? calories;
  String? createdDate;
  Null? deletedAt;
  String? description;
  String? diseaseList;
  String? dishName;
  String? image;
  String? ingredients;
  int? menuNumber;
  double? price;
  String? recipeDescription;
  String? updatedAt;

  Menu(
      {this.avgTimeTaken,
      this.calories,
      this.createdDate,
      this.deletedAt,
      this.description,
      this.diseaseList,
      this.dishName,
      this.image,
      this.ingredients,
      this.menuNumber,
      this.price,
      this.recipeDescription,
      this.updatedAt});

  Menu.fromJson(Map<String, dynamic> json) {
    avgTimeTaken = json['avg_time_taken'];
    calories = json['calories'];
    createdDate = json['created_date'];
    deletedAt = json['deleted_at'];
    description = json['description'];
    diseaseList = json['disease_list'];
    dishName = json['dish_name'];
    image = json['image'];
    ingredients = json['ingredients'];
    menuNumber = json['menu_number'];
    price = json['price'];
    recipeDescription = json['recipe_description'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avg_time_taken'] = this.avgTimeTaken;
    data['calories'] = this.calories;
    data['created_date'] = this.createdDate;
    data['deleted_at'] = this.deletedAt;
    data['description'] = this.description;
    data['disease_list'] = this.diseaseList;
    data['dish_name'] = this.dishName;
    data['image'] = this.image;
    data['ingredients'] = this.ingredients;
    data['menu_number'] = this.menuNumber;
    data['price'] = this.price;
    data['recipe_description'] = this.recipeDescription;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
