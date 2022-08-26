import 'package:weather/controller/controller_initital_screen.dart';

class ControllerWallpaper {
  ControllerScreen controllerScreen = ControllerScreen();
  String wallpaper = "assets/wallpaper/11.png";
  int idNovo = 0;
  List<int> newId1  =  [9, 10, 11, 12, 40, 42, 45];
  List<int> newId2  =  [25, 27, 31, 32, 33, 34, 36, 44];
  List<int> newId3  =  [26, 28, 29, 30];
  List<int> newId4  =  [5, 8, 13, 14, 15, 16, 41, 43, 46];
  List<int> newId5  =  [0, 1, 3, 4, 37, 38, 39, 47];
  List<int> newId6  =  [19, 21];
  List<int> newId7  =  [2];
  List<int> newId8  =  [6, 7, 17, 18, 35];
  List<int> newId9  =  [20, 22];
  List<int> newId10 =  [23, 24];
  List<int> newId11 =  [48];

  Future<void> refactorValues(int valorAntigo) async {
    if (newId1.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId2.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId3.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId4.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId5.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId6.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId7.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId8.contains(valorAntigo)) {
      idNovo = 8;
    } else if (newId9.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId10.contains(valorAntigo)) {
      idNovo = 1;
    } else if (newId11.contains(valorAntigo)) {
      idNovo = 1;
    } else {
    
    }
  }

  Future<void> selectWallpaper() async{
    switch (idNovo) {
      case 1:
        if (controllerScreen.currently == "dia") {
          wallpaper = "assets/wallpaper/1_dia.png";
        } else {
          wallpaper = "assets/wallpaper/1_noite.png";
        }
        break;
      case 2:
        if (controllerScreen.currently == "dia") {
          wallpaper = "assets/wallpaper/2_dia.png";
        } else {
          wallpaper = "assets/wallpaper/2_noite.png";
        }
        break;
      case 3:
        if (controllerScreen.currently == "dia") {
          wallpaper = "assets/wallpaper/3_dia.png";
        } else {
          wallpaper = "assets/wallpaper/3_noite.png";
        }
        break;
      case 4:
        if (controllerScreen.currently == "dia") {
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
}
