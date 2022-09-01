import 'package:flutter/material.dart';
import 'package:workout/managers/network_manager.dart';
import 'package:workout/models/exercise/exercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<List<Exercises>?> exercises;
  int selectedIndex = 0;
  @override
  void initState() {
    exercises = NetworkManager.instance.getExercises();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Exercises>?>(
          future: exercises,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data?[index].name ?? ''),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
