import 'package:dartz/dartz.dart';
import 'package:pasti_laundry/config/app_constants.dart';
import 'package:pasti_laundry/config/app_request.dart';
import 'package:pasti_laundry/config/app_response.dart';
import 'package:pasti_laundry/config/failure.dart';
import 'package:http/http.dart' as http;

class UserDatasource {
  static Future<Either<Failure, Map>> login(
    String email,
    String password,
  ) async {
    Uri url = Uri.parse('${AppConstants.baseUrl}/login');
    try {
      final response = await http.post(
        url,
        headers: AppRequest.header(),
        body: {'email': email, 'password': password},
      );
      final data = AppResponse.data(response);
      return Right(data);
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return Left(FetchFailure(message: e.toString()));
    }
  }

  static Future<Either<Failure, Map>> register(
    String username,
    String email,
    String password,
  ) async {
    Uri url = Uri.parse('${AppConstants.baseUrl}/register');
    try {
      final response = await http.post(
        url,
        headers: AppRequest.header(),
        body: {'username': username, 'email': email, 'password': password},
      );
      final data = AppResponse.data(response);
      return Right(data);
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return Left(FetchFailure(message: e.toString()));
    }
  }
}
