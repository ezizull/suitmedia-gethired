import 'data.dart';

class UserRepo extends DataRepo {
  Future<Map<String, dynamic>> userResponse(Map map) async {
    final result = await get("https://reqres.in/api/users?page=${map['page']}&per_page=${map['perpage']}");
    return result.body;
  }
}
