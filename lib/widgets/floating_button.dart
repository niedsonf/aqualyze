import 'package:aqualyze/constants/style.dart';
import 'package:aqualyze/widgets/add_item_modal/add_item_modal.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatefulWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  State<CustomFloatingButton> createState() => _CustomFloatingButtonState();
}

class _CustomFloatingButtonState extends State<CustomFloatingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            transitionAnimationController: controller,
            context: context,
            backgroundColor: Colors.transparent,
            barrierColor: Colors.transparent,
            builder: (BuildContext context) {
              return AddItemModal(
                controller: controller,
              );
            });
      },
      backgroundColor: Colors.blueAccent,
      child: Icon(Icons.water, color: dark),
    );
  }
}
