import 'package:aqualyze/constants/style.dart';
import 'package:flutter/material.dart';

class MenuDrawerItem extends StatelessWidget {
  final String text;
  final IconData icon;
  Color? color;
  final Function() onTap;

  MenuDrawerItem(
      {Key? key, required this.text, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        width: _size.width / 5,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            boxShadow: [BoxShadow(color: dark, blurRadius: 3)],
            borderRadius: BorderRadius.all(Radius.elliptical(20, 30))),
        child: Column(
          children: [
            Icon(icon, color: color ?? light, size: 18),
            Text(text, style: TextStyle(fontSize: 14, color: color ?? light))
          ],
        ),
      ),
    );
  }
}
