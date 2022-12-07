import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Controller extends GetxController {
  //değişmeyen yapılar
  bool isDarkTheme = false;
  GetStorage locale = GetStorage();

  //değişen yapılar
  var count = 0.obs;

  saveLocaleisDarkTheme(bool isDarkTheme) {
    //hafızata isDarkTheme anahtar değerinde veri kaydedilir
    locale.write('isDarkTheme', isDarkTheme);
  }

  changedLangue(Locale locale) {
    Get.updateLocale(locale);
  }

  readLocaleisDarkTheme() {
    //hafızada kayıtlı olan isDarkTheme değerli veriyi getirir o değer eğer boş ise false değeri atanır.
    isDarkTheme = locale.read('isDarkTheme') ?? false;
    isDarkTheme ? Get.changeTheme(ThemeData.dark()) : Get.changeTheme(ThemeData.light());
  }

  themeChanged() {
    isDarkTheme = !isDarkTheme;
    isDarkTheme ? Get.changeTheme(ThemeData.dark()) : Get.changeTheme(ThemeData.light());
    saveLocaleisDarkTheme(isDarkTheme);
  }

  increment() => count++;

  @override
  void onInit() {
    //ilk girişte çalışacak kısımdır.
    readLocaleisDarkTheme();
    super.onInit();
  }
}
