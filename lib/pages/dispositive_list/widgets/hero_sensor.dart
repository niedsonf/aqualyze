import 'package:aqualyze/helpers/constants.dart';
import 'package:aqualyze/pages/dispositive_list/widgets/get_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeroSensor extends StatefulWidget {
  final String tag;
  HeroSensor({Key? key, required this.tag}) : super(key: key);

  @override
  State<HeroSensor> createState() => _HeroSensorState();
}

class _HeroSensorState extends State<HeroSensor> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        child: Hero(
            tag: widget.tag,
            transitionOnUserGestures: true,
            child: Column(
              children: [
                SizedBox(height: 50),
                Text('Histórico do ${widget.tag}',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent, fontSize: 30)),
                Positioned(left: 0, child: GetBackButton()),
                ...sensorController.sensors[0].data
                    .map((e) => Text(e.toString() + 'L/m'))
              ],
            )),
      ),
    );
  }
}
