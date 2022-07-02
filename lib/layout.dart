import 'package:aqualyze/constants/style.dart';
import 'package:aqualyze/helpers/responsiveness.dart';
import 'package:aqualyze/widgets/bottom_nav.dart';
import 'package:aqualyze/widgets/floating_button.dart';
import 'package:aqualyze/widgets/large_screen.dart';
import 'package:aqualyze/widgets/menu_drawer.dart';
import 'package:aqualyze/widgets/small_screen.dart';
import 'package:aqualyze/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class AqualyzeLayout extends StatelessWidget {
  AqualyzeLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNav(context, scaffoldKey),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: MenuDrawer(),
      drawerScrimColor: Colors.transparent,
      body: const Responsiveness(
          smallScreen: SmallScreen(), largeScreen: LargeScreen()),
      bottomNavigationBar: bottomNav(context),
    );
  }
}
