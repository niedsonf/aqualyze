import 'package:aqualyze/controllers/sensor_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

final Future<FirebaseApp> initialization = Firebase.initializeApp();
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
SensorController sensorController = SensorController.instance;
