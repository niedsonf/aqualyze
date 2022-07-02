import 'package:aqualyze/constants/style.dart';
import 'package:aqualyze/controllers/sensor_controller.dart';
import 'package:aqualyze/firebase_options.dart';
import 'package:aqualyze/layout.dart';
import 'package:aqualyze/pages/dispositive_list/widgets/hero_sensor.dart';
import 'package:aqualyze/routing/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(SensorController());
  runApp(const Aqualyze());
}

class Aqualyze extends StatelessWidget {
  const Aqualyze({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RootRoute,
      getPages: [GetPage(name: RootRoute, page: () => AqualyzeLayout())],
      title: 'Aqualyze',
      theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(),
          scaffoldBackgroundColor: light),
    );
  }
}
