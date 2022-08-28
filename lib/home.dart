import 'package:flutter/material.dart';
import 'package:workout/managers/network_manager.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late final exercises;
  final _networkService = NetworkManager.instance;
  @override
  void initState() {
    exercises = _networkService.getExercises();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Welcome')));
  }
}
