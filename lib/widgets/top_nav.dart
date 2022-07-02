import 'package:aqualyze/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar topNav(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) =>
    AppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      toolbarHeight: 100,
      elevation: 1,
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.elliptical(50, 20))),
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu_open_rounded, color: light)),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(backgroundColor: grey),
            const SizedBox(width: 10),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Olá,\n',
                  style: TextStyle(
                      fontSize: 16, color: grey, fontWeight: FontWeight.w400)),
              TextSpan(
                  text: 'Equipe',
                  style: TextStyle(
                      fontSize: 18, color: grey, fontWeight: FontWeight.w300)),
            ])),
            Expanded(child: Container()),
            Text('Aqualyze\nbeta',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10, color: light, fontWeight: FontWeight.w100))
          ]),
    );
