import 'package:flutter/material.dart';
import 'package:workout/body_part_list_view.dart';
import 'package:workout/equipment_list_view.dart';
import 'package:workout/managers/network_manager.dart';
import 'package:workout/models/exercise/exercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<List<Exercises>?> exercises;
  late final Future<List> getCategories;
  late final Future<List> getEquipments;
  bool isLoading = false;
  var exerciseRepo = NetworkManager.instance;
  @override
  void initState() {
    getEquipments = exerciseRepo.getListOfEquipment();
    exercises = NetworkManager.instance.getExercises();
    getCategories = exerciseRepo.getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'List by Body Parts',
            style: TextStyle(fontSize: 20),
          ),
          FutureBuilder<List>(
              future: getCategories,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => BodyPartListView(
                                                    bodyPart: snapshot.data?[index],
                                                  )));
                                    });
                                  },
                                  child: Card(
                                    child: (Column(
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 200,
                                            child: Image.asset(
                                                fit: BoxFit.fill,
                                                'assets/images/bodyParts/${snapshot.data?[index]}.jpg')),
                                        Text(snapshot.data?[index] ?? ''),
                                      ],
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          const Text(
            'List by Equipment',
            style: TextStyle(fontSize: 20),
          ),
          FutureBuilder<List>(
            future: getEquipments,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EquipmentListView(
                                                  equipment: snapshot.data?[index],
                                                )));
                                  });
                                },
                                child: Card(
                                  child: (Column(
                                    children: [
                                      SizedBox(
                                          height: 175,
                                          width: 175,
                                          child: Image.asset(
                                              fit: BoxFit.fill,
                                              'assets/images/equipments/${snapshot.data?[index]}.jpg')),
                                      Text(snapshot.data?[index] ?? ''),
                                    ],
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          const Spacer(),
        ],
      ),
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
