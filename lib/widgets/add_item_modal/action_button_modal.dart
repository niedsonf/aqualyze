import 'package:aqualyze/constants/style.dart';
import 'package:flutter/material.dart';

class ActionButtonModal extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData icon;
  final Function() onTap;
  const ActionButtonModal(
      {Key? key,
      required this.text,
      this.color,
      required this.icon,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: _size.width * 0.35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(text,
                  style: TextStyle(
                      color: light, fontSize: 16, fontWeight: FontWeight.w300)),
              Icon(icon, color: light, size: 18)
            ],
          ),
          decoration: BoxDecoration(
              color: color ?? Colors.transparent,
              border: Border.all(
                  color: color == null ? light : Colors.transparent, width: 2),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
