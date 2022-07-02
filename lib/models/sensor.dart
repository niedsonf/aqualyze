import 'package:cloud_firestore/cloud_firestore.dart';

class SensorModel {
  static const ID = 'id';
  static const ACTUAL_FLOW = 'actual flow';
  static const TOTAL_VOLUME = 'total volume';
  static const DATA = 'data';

  late String _id;
  late int _actualFlow;
  late int _totalVolume;
  late List _data;

  String get id => _id;
  List get data => _data;
  int get actualFlow => _actualFlow;
  int get totalVolume => _totalVolume;

  SensorModel.fromSnapshot(DocumentSnapshot snapshot) {
    _actualFlow = snapshot.get(ACTUAL_FLOW);
    _id = snapshot.get(ID);
    _totalVolume = snapshot.get(TOTAL_VOLUME);
    _data = snapshot.get(DATA);
  }
}
