import 'package:flutter/material.dart';
import 'package:workout/managers/network_manager.dart';
import 'package:workout/models/exercise/exercises.dart';

class BodyPartListView extends StatefulWidget {
  final String? bodyPart;
  const BodyPartListView({
    super.key,
    this.bodyPart,
  });

  @override
  State<BodyPartListView> createState() => _BodyPartListViewState();
}

class _BodyPartListViewState extends State<BodyPartListView> {
  late final Future<List<Exercises>?> bodyParts;
  @override
  void initState() {
    bodyParts = NetworkManager.instance.getByBodyParts(widget.bodyPart!.toLowerCase());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Exercises>?>(
        future: bodyParts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data?[index].name ?? ''),
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
