import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workout/managers/network_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final exercises;
  final _networkService = NetworkManager.instance;
  int selectedIndex = 0;
  @override
  void initState() {
    exercises = _networkService.getExercises();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
