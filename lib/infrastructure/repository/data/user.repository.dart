import 'data.dart';

class UserRepo extends DataRepo {
  Future<Map<String, dynamic>> paginUser(Map map) async {
    final result = await get("https://reqres.in/api/users?page=${map['page']}&per_page=${map['perpage']}");
    if (result.status.hasError) {
      return Future.error("${result.statusText}");
    } else {
      return result.body;
    }
  }
}
