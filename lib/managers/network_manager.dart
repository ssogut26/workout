import 'package:dio/dio.dart';
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
    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }

  Future<List> getCategories() async {
    final response = await _dio.getUri(Uri.parse('exercises/bodyPartList'));
    List bodyPart = [
      'Back',
      'Cardio',
      'Chest',
      'Neck',
      'Shoulders',
      'Waist',
      'Lower arms',
      'Lower legs',
      'Upper arms',
      'Upper legs',
    ];
    if (response.statusCode == 200) {
      return bodyPart;
    } else {
      return [];
    }
  }

  Future<List<Exercises>?> getByBodyParts(String bodyPart) async {
    final response = await _dio.getUri(Uri.parse('exercises/bodyPart/$bodyPart'));
    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }

  Future<List> getListOfEquipment() async {
    final response = await _dio.getUri(Uri.parse('exercises/equipmentList'));
    List equipmentList = [
      "Assisted",
      "Band",
      "Barbell",
      "Body weight",
      "Bosu ball",
      "Cable",
      "Dumbbell",
      "Elliptical machine",
      "Ez barbell",
      "Hammer",
      "Kettlebell",
      "Leverage machine",
      "Medicine ball",
      "Olympic barbell",
      "Resistance band",
      "Roller",
      "Rope",
      "Skierg machine",
      "Sled machine",
      "Smith machine",
      "Stability ball",
      "Stationary bike",
      "Stepmill machine",
      "Tire",
      "Trap bar",
      "Upper body ergometer",
      "Weighted",
      "Wheel roller"
    ];
    if (response.statusCode == 200) {
      return equipmentList;
    }
    return [];
  }

  Future<List<Exercises>?> getListByName(String name) async {
    final response = await _dio.getUri(Uri.parse('exercises/name/$name'));
    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }

  Future<List<Exercises>?> getListByTarget(String target) async {
    final response = await _dio.getUri(Uri.parse('exercises/target/$target'));

    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }

  Future<List<Exercises>?> getListOfTarget() async {
    final response = await _dio.getUri(Uri.parse('exercises/targetList'));

    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }

  Future<List<Exercises>?> getListByEquipment(String type) async {
    final response = await _dio.getUri(Uri.parse('exercises/equipment/$type'));
    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }

  Future<List<Exercises>?> getOneExercise(int id) async {
    final response = await _dio.getUri(Uri.parse('exercises/$id'));

    List<Exercises> exerciseList = [];
    if (response.statusCode == 200) {
      List<dynamic> data = (response.data);
      exerciseList = data.map((e) => Exercises.fromJson(e)).toList();
    }
    return exerciseList;
  }
}
