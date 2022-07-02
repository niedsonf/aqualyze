import 'package:aqualyze/models/sensor.dart';
import 'package:aqualyze/services/sensor.dart';
import 'package:get/get.dart';

class SensorController extends GetxController {
  static SensorController instance = Get.find();

  List<SensorModel> _sensors = [];
  List<SensorModel> get sensors => _sensors;

  Future<List<SensorModel>> getSensor(String id) async {
    _sensors.add(await SensorServices.getSensorById(id));
    print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
    print(_sensors);
    print('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
    return _sensors;
  }
}
