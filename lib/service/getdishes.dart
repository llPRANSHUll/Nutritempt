import '../model/getdishesmodel.dart';
import 'baseservice.dart';

class GetDishesservice extends BaseApiService {
  Future<dishesModel> getdishes(String disease) async {
    try {
      var body = {"text": disease};
      final response = await sendRequest(
          'https://aijaz.pythonanywhere.com/audio_dishes',
          method: 'POST',
          body: body);
      return dishesModel.fromJson(response);
    } catch (e) {
      print('error in getRiders==>$e');
      rethrow;
    }
  }
}
