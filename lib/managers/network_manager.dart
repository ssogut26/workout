import 'package:dio/dio.dart';
import 'package:workout/models/exercise_model.dart';

class NetworkManager {
  final url = 'https://wger.de/api/v2/';
  NetworkManager._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: url,
      ),
    );
  }
  late final Dio _dio;

  static final NetworkManager instance = NetworkManager._();
  Dio get service => _dio;

  Future<List<ExerciseResult>?> getExercises() async {
    final response = await _dio.get('exercise');
    if (response.statusCode == 200) {
      print(response.data);
      return ExerciseModel.fromJson(response.data).results;
    } else {
      return null;
    }
  }
}
