import 'package:aqualyze/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetBackButton extends StatefulWidget {
  const GetBackButton({Key? key}) : super(key: key);

  @override
  State<GetBackButton> createState() => _GetBackButtonState();
}

class _GetBackButtonState extends State<GetBackButton> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: _size.width * 0.25,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Voltar', style: TextStyle(color: light, fontSize: 14)),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_back_rounded,
              color: light,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
