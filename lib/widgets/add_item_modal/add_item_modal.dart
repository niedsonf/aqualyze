import 'package:aqualyze/constants/style.dart';
import 'package:aqualyze/widgets/add_item_modal/action_button_modal.dart';
import 'package:aqualyze/widgets/add_item_modal/text_input_modal.dart';
import 'package:aqualyze/widgets/add_item_modal/top_modal.dart';
import 'package:flutter/material.dart';

class AddItemModal extends StatefulWidget {
  final AnimationController controller;
  const AddItemModal({Key? key, required this.controller}) : super(key: key);

  @override
  State<AddItemModal> createState() => _AddItemModalState();
}

class _AddItemModalState extends State<AddItemModal> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return BottomSheet(
      onClosing: () {
        Navigator.pop(context);
      },
      animationController: widget.controller,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) => Container(
        height: _size.height * 0.75,
        decoration: BoxDecoration(
          color: dark,
          borderRadius: BorderRadius.vertical(top: Radius.elliptical(50, 20)),
        ),
        child: Column(
          children: [
            TopModal(),
            Expanded(child: Container()),
            TextInputModal(text: 'ID do Sensor', icon: Icons.password),
            SizedBox(height: 30),
            TextInputModal(text: 'Cômodo', icon: Icons.house),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionButtonModal(
                    text: 'Limpar', icon: Icons.recycling, onTap: () {}),
                ActionButtonModal(
                    text: 'Adicionar',
                    color: Colors.blueAccent,
                    icon: Icons.check,
                    onTap: () {}),
              ],
            ),
            Expanded(child: Container(), flex: 2),
          ],
        ),
      ),
    );
  }
}
