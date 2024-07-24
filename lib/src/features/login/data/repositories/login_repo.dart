
/*
abstract class LoginRepositoryImplAbs {
  Future<Either<NetworkExceptions, LoginModel>> getLogin(
      {String? email, String? password, bool? remember});
  Future<Either<Tuple2<bool, String>, Tuple2<bool, String>>> registerUser(
      {String? firstName, String? lastName, String? email, String? password});
  Future<Either<NetworkExceptions, String>> forgotPassword({String? email});
}

class LoginRepositoryImpl implements LoginRepositoryImplAbs {
  final repo = NetworkManager();
  @override
  Future<Either<NetworkExceptions, LoginModel>> getLogin(
      {String? email, String? password, bool? remember}) async {
    try {
      final response = await repo.dio.post(
        '/platform_v2/login',
        queryParameters: {
          'email': email,
          'password': password,
          'remember': remember
        },
      );

      return Right(LoginModel.fromJson(response.data));
    } catch (e) {
      print(e);
      return Left(NetworkExceptions(message: e.toString()));
    }
  }

  Future<Either<Tuple2<bool, String>, Tuple2<bool, String>>> registerUser(
      {String? firstName,
      String? lastName,
      String? email,
      String? password}) async {
    try {
      final response =
          await repo.dio.post('/platform_v2/register', queryParameters: {
        'firstname': firstName,
        'last_name': lastName,
        'email': email,
        'password': password,
        'contract': '1'
      });

      final data = response.data;

      final success = data['success'];
      final message = data['message'];

      return Right(Tuple2(success, message));
    } catch (e) {
      if (e is DioException) {
        // DioError durumu
        final responseData = e.response?.data;

        if (responseData != null) {
          final success = responseData['success'];
          final message = responseData['message'];
          return Left(Tuple2(success, message));
        } else {
          // Eğer response boşsa bir hata mesajı dönebilirsiniz.
          return Left(Tuple2(false, 'Bilinmeyen bir hata oluştu.'));
        }
      } else {
        print(e);
        return Left(Tuple2(false, 'Bilinmeyen bir hata oluştu.'));
      }
    }
  }

  Future<Either<NetworkExceptions, String>> forgotPassword(
      {String? email}) async {
    try {
      final response = await repo.dio.post('/platform_v2/forgot-password',
          queryParameters: {'email': email});

      final data = response.data;

      final message = data['message'];

      return Right(message);
    } catch (e) {
      print(e);
      return Left(NetworkExceptions(message: e.toString()));
    }
  }
}
*/