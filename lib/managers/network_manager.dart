import 'package:dio/dio.dart';
import 'package:workout/models/exercise/exercises.dart';

class NetworkManager {
  final url = 'https://api.api-ninjas.com/v1/';
  NetworkManager._() {
    _dio = Dio(
      BaseOptions(
        headers: {'X-Api-Key': 'p1BE4b4C3ny/dyXSGvmkDA==95rq9sUkYKdPvmRg'},
        baseUrl: url,
      ),
    );
  }
  late final Dio _dio;

  static final NetworkManager instance = NetworkManager._();
  Dio get service => _dio;

  Future<List<Exercises>?> getExercises() async {
    final response = await _dio.getUri(Uri.parse('exercises'));
    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((element) {
        exerciseList.add(Exercises.fromJson(element));
      });
    }
    return exerciseList;
  }
}
