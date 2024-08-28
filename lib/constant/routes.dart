import 'package:flutter/cupertino.dart';
import 'package:nutriapp/views/additems.dart';
// import 'package:nutriapp/views/cart.dart';
import 'package:nutriapp/views/customization.dart';
import 'package:nutriapp/views/dish_desc.dart';
import 'package:nutriapp/views/foodbanks.dart';
import 'package:nutriapp/views/home.dart';
import 'package:nutriapp/views/menu.dart';
import 'package:nutriapp/views/smartsearch.dart';

Map<String, WidgetBuilder> routes = {
  "/home": (context) => Home(),
  "/customizesearch": (context) => Customization(),
  "/smartsearch": (context) => SmartSearch(),
  "/dishes": (context) => Dish_Description(),
  "/additems": (context) => AddItems(),
  "/menu": (context) => Menu(),
  "/foodbanks": (context) => FoodBanks(),
  // "/cart": (context) => Cart()
};
