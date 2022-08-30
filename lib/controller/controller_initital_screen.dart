import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/service/info_location.dart';

class ControllerScreen {
  ServiceInfoLocation serviceInfoLocation = ServiceInfoLocation();
  VoidCallback? func;
  String? latitude;
  String? longitude;
  String? cordinates;
  String? temperatureCurrent;
  String? currently;
  int? codeConditionCurrent;
  String? cityName;
  String? altitude;
  String? date;
  List arrayDate = [];
  String? temperatureMax;
  String? temperatureMin;
  List arrayTemperatureMax = [];
  String? condition;
  List arrayCondition = [];
  String? windSpeed;
  String? humidity;
  String? conditionSlug;

  //
  String wallpaper = "assets/wallpaper/11.png";
  String largerIcon = "";
  String smallIcon = "";
  int idNovo = 0;
  List<int> newId1 = [9, 10, 11, 12, 40, 42, 45];
  List<int> newId2 = [25, 27, 31, 32, 33, 34, 36, 44];
  List<int> newId3 = [26, 28, 29, 30];
  List<int> newId4 = [5, 8, 13, 14, 15, 16, 41, 43, 46];
  List<int> newId5 = [0, 1, 3, 4, 37, 38, 39, 47];
  List<int> newId6 = [19, 21];
  List<int> newId7 = [2];
  List<int> newId8 = [6, 7, 17, 18, 35];
  List<int> newId9 = [20, 22];
  List<int> newId10 = [23, 24];
  List<int> newId11 = [48];
  //

  Future<void> requestCordinates() async {
    Geolocator.requestPermission();
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      await Geolocator.getCurrentPosition().then((value) {
        latitude = value.latitude.toStringAsFixed(5);
        longitude = value.longitude.toStringAsFixed(5);
        altitude = value.altitude.toStringAsFixed(0);
        cordinates = "&lat=$latitude&long=$longitude&user_ip=remote";
      });
      await infoTemperature();
      await refactorValues(codeConditionCurrent!);
      await selectWallpaper();
      await selectIconLarger(conditionSlug);
      await selectSmallIcon();
      func?.call();
    }
  }

  Future<void> infoTemperature() async {
    await serviceInfoLocation
        .getTemperature(cordinates)
        .then((infoTeperature) async {
      temperatureCurrent = infoTeperature['results']['temp'].toString();
      currently = infoTeperature['results']['currently'];
      cityName = infoTeperature['results']['city_name'];
      windSpeed = infoTeperature['results']['wind_speedy'];
      humidity = infoTeperature['results']['humidity'].toString();
      codeConditionCurrent =
          int.parse(infoTeperature['results']['condition_code']);
      conditionSlug = infoTeperature['results']['condition_slug'];
      temperatureMax = infoTeperature['results']['forecast'][0]['max'].toString();
      temperatureMin = infoTeperature['results']['forecast'][0]['min'].toString();
      for (var i = 0; i < 6; i++) {
        arrayTemperatureMax
            .add(infoTeperature['results']['forecast'][i]['max']);
        arrayDate.add(infoTeperature['results']['forecast'][i]['date']);
        arrayCondition
            .add(infoTeperature['results']['forecast'][i]['condition']);
      }
    });
  }

  refactorValues(int valorAntigo) {
    if (newId1.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId2.contains(valorAntigo)) {
      idNovo = 2;
    } else if (newId3.contains(valorAntigo)) {
      idNovo = 3;
    } else if (newId4.contains(valorAntigo)) {
      idNovo = 4;
    } else if (newId5.contains(valorAntigo)) {
      idNovo = 5;
    } else if (newId6.contains(valorAntigo)) {
      idNovo = 6;
    } else if (newId7.contains(valorAntigo)) {
      idNovo = 7;
    } else if (newId8.contains(valorAntigo)) {
      idNovo = 8;
    } else if (newId9.contains(valorAntigo)) {
      idNovo = 9;
    } else if (newId10.contains(valorAntigo)) {
      idNovo = 10;
    } else if (newId11.contains(valorAntigo)) {
      idNovo = 11;
    } else {}
  }

  selectWallpaper() {
    switch (idNovo) {
      case 1:
        if (currently == "dia") {
          wallpaper = "assets/wallpaper/1_dia.png";
        } else {
          wallpaper = "assets/wallpaper/1_noite.png";
        }
        break;
      case 2:
        if (currently == "dia") {
          wallpaper = "assets/wallpaper/2_dia.png";
        } else {
          wallpaper = "assets/wallpaper/2_noite.png";
        }
        break;
      case 3:
        if (currently == "dia") {
          wallpaper = "assets/wallpaper/3_dia.png";
        } else {
          wallpaper = "assets/wallpaper/3_noite.png";
        }
        break;
      case 4:
        if (currently == "dia") {
          wallpaper = "assets/wallpaper/4_dia.png";
        } else {
          wallpaper = "assets/wallpaper/4_noite.png";
        }
        break;
      case 5:
        wallpaper = "assets/wallpaper/5.png";
        break;
      case 6:
        wallpaper = "assets/wallpaper/6.png";
        break;
      case 7:
        wallpaper = "assets/wallpaper/7.png";
        break;
      case 8:
        wallpaper = "assets/wallpaper/8.png";
        break;
      case 9:
        wallpaper = "assets/wallpaper/9.png";
        break;
      case 10:
        wallpaper = "assets/wallpaper/10.png";
        break;
      case 11:
        wallpaper = "assets/wallpaper/11.png";
        break;
      default:
        wallpaper = "assets/wallpaper/erro.png";
        break;
    }
  }

  selectIconLarger(conditionSlug) {
    switch (conditionSlug) {
      case "storm":
        if (currently == "dia") {
          largerIcon = "assets/icons/storm_day.png";
        } else {
          largerIcon = "assets/icons/storm_night.png";
        }
        break;
      case "rain":
        if (currently == "dia") {
          largerIcon = "assets/icons/rain_day.png";
        } else {
          largerIcon = "assets/icons/rain_night.png";
        }
        break;
      case "hail":
        if (currently == "dia") {
          largerIcon = "assets/icons/hail_day.png";
        } else {
          largerIcon = "assets/icons/hail_night.png";
        }
        break;
      case "clear_day":
        largerIcon = "assets/icons/clear_day.png";
        break;
      case "clear_night":
        largerIcon = "assets/icons/clear_night.png";
        break;
      case "cloudly_day":
        largerIcon = "assets/icons/cloudly_day.png";
        break;
      case "cloudly_night":
        largerIcon = "assets/icons/cloudly_night.png";
        break;
      case "fog":
        largerIcon = "assets/icons/fog.png";
        break;
      case "snow":
        largerIcon = "assets/icons/snow_day.png";
        break;
      default:
    }
  }

  selectSmallIcon() {
    for (int i = 0; i < arrayCondition.length; i++) {
      if (arrayCondition[i] == "storm") {
        arrayCondition[i] = "assets/icons/storm_icon_small.png";
      } else if (arrayCondition[i] == "snow") {
        arrayCondition[i] = "assets/icons/snow_icon_small.png";
      } else if (arrayCondition[i] == "hail") {
        arrayCondition[i] = "assets/icons/hail_icon_small.png";
      } else if (arrayCondition[i] == "rain") {
        arrayCondition[i] = "assets/icons/rain_icon_small.png";
      } else if (arrayCondition[i] == "fog") {
        arrayCondition[i] = "assets/icons/fog_icon_small.png";
      } else if (arrayCondition[i] == "clear_day") {
        arrayCondition[i] = "assets/icons/clear_icon_small.png";
      } else if (arrayCondition[i] == "clear_night") {
        arrayCondition[i] = "assets/icons/clear_icon_small.png";
      } else if (arrayCondition[i] == "cloud") {
        arrayCondition[i] = "assets/icons/cloud_icon_small.png";
      } else if (arrayCondition[i] == "cloudly_day") {
        arrayCondition[i] = "assets/icons/cloud_icon_small.png";
      } else if (arrayCondition[i] == "cloudly_night") {
        arrayCondition[i] = "assets/icons/cloud_icon_small.png";
      } else if (arrayCondition[i] == "none_day") {
        arrayCondition[i] = "assets/icons/storm_icon_small.png";
      } else if (arrayCondition[i] == "none_night") {
        arrayCondition[i] = "assets/icons/storm_icon_small.png";
      } else {}
    }
  }
}
