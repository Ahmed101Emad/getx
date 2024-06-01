import 'package:get/get.dart';
import 'package:getx/model/fake_data(coffee).dart';
import 'package:getx/model/model.dart';

class HomeController extends GetxController {
  List<Product> modeledData = [];
  List<Product> ModelateData() {
    modeledData = fakeData["data"]!.map((e) => Product.fromJson(e)).toList();
    return modeledData;
  }
}
