import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperMethods {
  static Future<CroppedFile?> getImagePicker() async {
    XFile? imageFile;
    imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    return await ImageCropper().cropImage(
      sourcePath: imageFile!.path,
      aspectRatio: const CropAspectRatio(ratioX: 2, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
            toolbarColor: Colors.black,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true),
      ],
    );
  }

  static Future<File> getImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    return File(pickedFile!.path);
  }

  static Future<File> getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    return File(pickedFile!.path);
  }

  static Future<List<File>> getImagesFromGallery() async {
    final pickedFile = await ImagePicker().pickMultiImage();
    return pickedFile.map((e) => File(e.path)).toList();
  }

  static showErrorToast(String msg,
      {Color? color, ToastGravity? gravity}) async {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: gravity ?? ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color ?? Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static showSuccessToast(String msg,
      {Color? color, ToastGravity? gravity}) async {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: gravity ?? ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: color ?? Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static Future<void> launchCallPhone(String phoneNumber) async {
    Uri telephoneUrl = Uri.parse("tel:$phoneNumber");
    if (await canLaunchUrl(telephoneUrl)) {
      await launchUrl(telephoneUrl);
    } else {
      showErrorToast('حدث خطأ أثناء الاتصال بالرقم');
    }
  }

  static Future<void> launchWhatsApp(String phoneNumber) async {
    Uri whatsUpUrl = Uri.parse("whatsapp://send?phone=$phoneNumber");
    if (await canLaunchUrl(whatsUpUrl)) {
      await launchUrl(whatsUpUrl);
    } else {
      showErrorToast('حدث خطأ اثناء الاتصال بالواتساب');
    }
  }
  static Future<DateTime?> selectDate(BuildContext context) async {
    ThemeData theme = Theme.of(context);
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1000),
      lastDate: DateTime(3555),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
            ),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
  }

  // telegram
  static Future<void> launchTelegram(String phoneNumber) async {
    Uri telegramUrl = Uri.parse("https://t.me/$phoneNumber");
    if (await canLaunchUrl(telegramUrl)) {
      await launchUrl(telegramUrl);
    } else {
      showErrorToast('حدث خطأ اثناء الاتصال بالتليجرام');
    }
  }

  static Future<void> launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showErrorToast('حدث خطأ أثناء الاتصال بالرابط');
    }
  }

  // show date picker
  static Future<String> datePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
      return picked.toString();
    }
    return '';
  }

  static Future<String> timePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      final now = DateTime.now();
      final selectedTime = DateTime(
        now.year,
        now.month,
        now.day,
        picked.hour,
        picked.minute,
      );

      return selectedTime.toString();
    }
    return '';
  }


/// Locale DATA
  static  GetStorage getStorage = GetStorage();
  ///Language
  static setLanguage(String language) async {
    getStorage.write('language', language);
  }
  static String getLanguage() {
    return getStorage.read('language') ?? 'en';
  }

  ///Profile
  // static Future<void> saveProfile(ProfileDto dto) async {
  //
  //   try {
  //     GetStorage().write('profile',  jsonEncode(dto.toJson()));
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     if (dto.token != null && dto.token!.isNotEmpty) {
  //       prefs.setString('profile', jsonEncode(dto.toJson()));
  //     } else {
  //       dto.token = await getToken();
  //       prefs.setString('profile', jsonEncode(dto.toJson()));
  //     }
  //   } on Exception catch (e) {
  //     print('e $e');
  //     rethrow;
  //   }
  // }
  // static getProfile(){
  //   var res = GetStorage().read('profile');
  //   return  ProfileDto.fromJson(jsonDecode(res));
  // }

///Token
   Future<void> saveToken(String token) async {
    try {
      saveSecuredData('token', token);
    } on Exception catch (e) {
      rethrow;
    }
  }

   Future<String?> getToken()async{
     var res =await getSecuredData('token');
     return  res??'';
  }



///Auth Methods
  // is login
   Future<bool> isLogin() async {
    try {
      String? token =  await  getToken();
      return  token != null &&token.isNotEmpty;
    } on Exception catch (e) {
      return false;
    }
  }

  // // remove token
  // static Future<void> clearCashData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.clear().then((value) {
  //     pushNamedAndRemoveUntil(Routes.loginPage);
  //   });
  //
  // }

  static bool isFirstTime()  {
    try {
      return getStorage.read('isFirstTime') ?? true;
    } catch (e) {
      return false;
    }
  }

  static Future<void> setFirstTime() async {
    try {
      getStorage.write('isFirstTime', false);
    } catch (e) {
      print('e $e');
    }
  }


  ///Security Storage
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  Future<String?> getSecuredData(String key) async => await secureStorage.read(key: key);

  Future<void> saveSecuredData(String key, String value) async => await secureStorage.write(key: key, value: value);

  Future<void> deleteSecuredData() async => await secureStorage.deleteAll();

}
