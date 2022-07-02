// ignore_for_file: prefer_const_constructors

import 'package:aqualyze/constants/style.dart';
import 'package:aqualyze/helpers/constants.dart';
import 'package:aqualyze/pages/dispositive_list/widgets/hero_sensor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DispositiveItem extends StatelessWidget {
  const DispositiveItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: sensorController.getSensor('idsensor1'),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.done:
            return GestureDetector(
              onTap: () => Get.to(HeroSensor(tag: 'idsensor1')),
              child: Hero(
                tag: 'idsensor1',
                transitionOnUserGestures: true,
                child: Container(
                  height: _size.height / 5,
                  width: _size.width,
                  margin: EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                      color: dark,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    child: Column(
                      children: [
                        Container(color: Colors.blueAccent, height: 20),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Expanded(child: Container()),
                            CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 35,
                            ),
                            Expanded(child: Container()),
                            RichText(
                                textAlign: TextAlign.end,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Volume diário   ',
                                      style: TextStyle(
                                          color: light,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  TextSpan(
                                      text: sensorController
                                              .sensors[0].totalVolume
                                              .toString() +
                                          'L\n\n',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14)),
                                  TextSpan(
                                      text: 'Último fluxo   ',
                                      style: TextStyle(
                                          color: light,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  TextSpan(
                                      text: sensorController
                                              .sensors[0].actualFlow
                                              .toString() +
                                          'L/m\n\n',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14)),
                                  TextSpan(
                                      text: 'Status:   ',
                                      style: TextStyle(
                                          color: light,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12)),
                                  TextSpan(
                                      text: 'Ativo',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14)),
                                ])),
                            Expanded(child: Container()),
                          ],
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                ),
              ),
            );
          default:
            return CircularProgressIndicator();
        }
      },
    );
  }
}
