import 'package:aqualyze/pages/dispositive_list/widgets/dispositive_item.dart';
import 'package:flutter/material.dart';

class DispositiveList extends StatelessWidget {
  const DispositiveList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ListView(
        children: [
          DispositiveItem(),
        ],
      ),
    );
  }
}
