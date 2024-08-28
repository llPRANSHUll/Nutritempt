import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nutriapp/service/getseletctedword.dart';

import '../model/getdishesmodel.dart';
import '../model/menumodel.dart';
import '../service/getdishes.dart';
import '../service/menuservice.dart';

class GetDishProvider extends ChangeNotifier {
  dishesModel getdishes = dishesModel();
  List<Dishes>? dishList = [];
  TextEditingController diseaseController = TextEditingController();
  TextEditingController dishNameController = TextEditingController();
  TextEditingController ingredientsController = TextEditingController();
  TextEditingController caloriesController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  List<Dishes>? selecteddish;
  List<dynamic> array = [];
  MenuModal menudata = MenuModal();
  String result = "";
  String wordlast = '';

  void getDish() async {
    try {
      getdishes = await GetDishesservice().getdishes(diseaseController.text);
      dishList = getdishes.dishes;
      notifyListeners();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  void getDishfromvoice(String Lastword) async {
    try {
      getdishes = await GetDishesservice().getdishes("sugar");
      dishList = getdishes.dishes;
      notifyListeners();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  void selectedList(String label_data) {
    for (var i in dishList!) {
      if (i.lable == label_data) {
        selecteddish = [i];
      }
    }
    notifyListeners();
  }

  void clearfunction() {
    diseaseController.clear();
    notifyListeners();
  }

  void getLastword(word) {
    wordlast = word;
    notifyListeners();
  }

  void selectedWord(String word) async {
    print("word$word");
    try {
      getdishes = await GetDishesservice().getdishes(word);
      dishList = getdishes.dishes;
      notifyListeners();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  void getMenu() async {
    try {
      menudata = await GetMenusservice().getMenu();
      notifyListeners();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  void submitMenu() async {
    var response = await GetMenusservice().submitMenu(
        dishNameController.text,
        ingredientsController.text,
        double.parse(caloriesController.text),
        int.parse(priceController.text));
    print('response234$response');
  }

  void deleteDish(int dish) async {
    var response = await GetMenusservice().deleteDish(dish);
    print('response234$response');
  }
}
