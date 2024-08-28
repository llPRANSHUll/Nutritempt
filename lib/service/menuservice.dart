

import '../model/menumodel.dart';
import 'baseservice.dart';

class GetMenusservice extends BaseApiService {
  Future<MenuModal> getMenu() async {
    try {
      final response = await sendRequest('https://aijaz.pythonanywhere.com', method: 'GET');
      return MenuModal.fromJson(response);
    } catch (e) {
      print('error in getRiders==>$e');
      rethrow;
    }
  }


  Future<Map<String,dynamic>> submitMenu(
     String dishName, String ingredients, double calories , int price
    ) async {
  try {
    var body = {
    "dish_name":dishName,
    "ingredients":ingredients,
    "price": price,
    "avg_time_taken": 30,
    "disease_list": "N/A",
    "recipe_description": "",
    "calories":calories
};
    var response = await sendRequest('https://aijaz.pythonanywhere.com/add',
        method: 'POST', body: body);
    print("response12$response");
    return response;
  } catch (e) {
    print('error>$e');
    rethrow;
  }
}

Future<Map<String,dynamic>> deleteDish(
     int menuNumber, 
    ) async {
  try {
    var response = await sendRequest('https://aijaz.pythonanywhere.com/delete/$menuNumber',
        method: 'DELETE');
    print("response12$response");
    return response;
  } catch (e) {
    print('error>$e');
    rethrow;
  }
}
}