import '../model/getdishesmodel.dart';
import 'baseservice.dart';

class Getword extends BaseApiService {
Future<dishesModel> getSelectedWord(String word) async {
  try {
    var body = {"text": word};
    var response = await sendRequest('https://aijaz.pythonanywhere.com/audio_dishes',
        method: 'POST', body: body);
    return dishesModel.fromJson(response);
  } catch (e) {
    print('error>$e');
    rethrow;
  }
}

}
