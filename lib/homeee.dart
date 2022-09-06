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
  final int _page = 0;
  final int _perPage = 10;
  bool isLoading = false;

  late ScrollController controller;
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
                controller: controller,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data?[index].name ?? ''),
                    // subtitle: Image.network(
                    // snapshot.data?[index].gifUrl ?? '',
                    // fit: BoxFit.cover,
                    // ),
                    subtitle: Text(snapshot.data?[index].bodyPart ?? ''),
                    leading: Text(snapshot.data?[index].equipment ?? ''),
                    trailing: Text(snapshot.data?[index].target ?? ''),
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

  changeLoading() {
    setState(() {
      isLoading = !isLoading;
      if (isLoading == true) {
        const CircularProgressIndicator();
      } else {
        const SizedBox();
      }
    });
  }
}
