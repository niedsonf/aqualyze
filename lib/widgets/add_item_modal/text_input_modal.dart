import 'package:aqualyze/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextInputModal extends StatelessWidget {
  IconData icon;
  String text;
  TextInputModal({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
    Size _size = MediaQuery.of(context).size;
    return SizedBox(
      width: _size.width * 0.75,
      child: TextFormField(
        style: TextStyle(color: light),
        controller: editingController,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: light),
              borderRadius: BorderRadius.circular(50)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: light),
              borderRadius: BorderRadius.circular(50)),
          labelStyle:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w200),
          labelText: text,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          suffixIcon: Icon(icon, color: Colors.blueAccent, size: 20),
        ),
      ),
    );
  }
}
