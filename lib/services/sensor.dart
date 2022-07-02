import 'package:aqualyze/helpers/constants.dart';
import 'package:aqualyze/models/sensor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SensorServices {
  static const COLLECTION = 'sensors';
  static const ACTUAL_FLOW = 'actual flow';
  static const TOTAL_VOLUME = 'total volume';

  static Future<SensorModel> getSensorById(String id) => firebaseFirestore
      .collection(COLLECTION)
      .doc(id)
      .get()
      .then((doc) => SensorModel.fromSnapshot(doc));
}
