import 'package:dio/dio.dart';
import 'package:workout/homeee.dart';
import 'package:workout/models/exercise/exercises.dart';
import 'package:workout/utils/secret.dart';

class NetworkManager {
  final url = 'https://exercisedb.p.rapidapi.com/';
  NetworkManager._() {
    _dio = Dio(
      BaseOptions(headers: {
        'X-RapidAPI-Key': ApiKeys.ApiKey,
        'X-RapidAPI-Host': ApiKeys.ApiHost,
      }, baseUrl: url),
    );
  }
  late final Dio _dio;

  static final NetworkManager instance = NetworkManager._();
  Dio get service => _dio;

  Future<List<Exercises>?> getExercises() async {
    final response = await _dio.getUri(Uri.parse('exercises?&limit=10'));
    HomePage;
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
