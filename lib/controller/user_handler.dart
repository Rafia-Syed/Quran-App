import 'package:quran_app/model/user_model.dart';
import 'package:dio/dio.dart';

class UserHandler {
  final Dio dio = Dio();

  Future<List<UserModel>?> getAllUsers() async {
    try {
      Response response = await dio.get("https://reqres.in/api/users", queryParameters: {"page": 1});
      if (response.statusCode == 200) {
        List<UserModel> usersData = [];
        for (var data in response.data['data']) {
          UserModel userModel = UserModel.fromJson(data);
          usersData.add(userModel);

          // usersData.add(UserModel.fromJson(data));
        }
        return usersData;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
