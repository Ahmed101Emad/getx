import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/cart.dart';
import 'package:getx/view/tabbar.dart';

class NavigationController extends GetxController {
  List<Widget> screens = [Tabbar(), Cart()];
  int currentIndex = 0;
  changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
