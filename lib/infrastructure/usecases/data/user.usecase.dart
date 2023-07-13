import 'package:gethired/infrastructure/models/models.dart';
import 'package:gethired/infrastructure/repository/data/data.dart';

class UserUseCase {
  final UserRepo userRepo;

  UserUseCase({required this.userRepo});

  Future<Pagination> getUsers(Map map) async {
    final result = await userRepo.userResponse(map);
    return Pagination.fromMap(result);
  }
}
