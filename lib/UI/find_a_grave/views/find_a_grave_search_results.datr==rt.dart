import 'package:flutter/material.dart';
import 'package:web_project/models/grave.dart';

import '../../../models/find_a_grave_search_input.dart';

class FindAGraveSearchResults extends StatelessWidget {
  final List<Grave> graveResults;
  const FindAGraveSearchResults({super.key, required this.graveResults});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: graveResults.length,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(graveResults[index].deceased!.fullNames!),
        subtitle: Text(graveResults[index].deceased!.surName!),
      );
    },);
  }
}
