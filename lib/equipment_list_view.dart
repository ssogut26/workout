import 'package:flutter/material.dart';
import 'package:workout/managers/network_manager.dart';
import 'package:workout/models/exercise/exercises.dart';

class EquipmentListView extends StatefulWidget {
  final String equipment;
  const EquipmentListView({
    super.key,
    required this.equipment,
  });

  @override
  State<EquipmentListView> createState() => _EquipmentListViewState();
}

class _EquipmentListViewState extends State<EquipmentListView> {
  late final Future<List<Exercises>?> equipments;
  @override
  void initState() {
    equipments =
        NetworkManager.instance.getListByEquipment(widget.equipment.toLowerCase());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Exercises>?>(
        future: equipments,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data?[index].name?.toTitleCase() ?? ''),
                  subtitle: Image.network(snapshot.data?[index].gifUrl ?? ''),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
