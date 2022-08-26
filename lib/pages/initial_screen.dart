import 'package:flutter/material.dart';
import 'package:weather/controller/controller_initital_screen.dart';
import 'package:weather/widgets/date_text.dart';
import 'package:weather/widgets/image.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  ControllerScreen controllerScreen = ControllerScreen();
  // ControllerWallpaper controllerWallpaper = ControllerWallpaper();
  void updatedState() {
    if (mounted) setState(() {});
  }

  @override
  void initState(){
    super.initState();
    controllerScreen.requestCordinates();
    controllerScreen.func = updatedState;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: controllerScreen.wallpaper == "assets/wallpaper/11.png"
          ? Center(
              child: SizedBox(
                width: size.width * 0.4,
                height: size.width * 0.4,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  strokeWidth: size.width * 0.01,
                ),
              ),
            )
          : Stack(
              children: [
                Image.asset(controllerScreen.wallpaper,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.width * .15, left: size.width * .65),
                      child: SizedBox(
                          height: size.width * 0.3,
                          width: size.width * 0.3,
                          child: Image.asset(controllerScreen.largerIcon)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${controllerScreen.temperatureCurrent}º",
                          style: TextStyle(
                              fontSize: size.width * .3, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: size.width * 0.07),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(controllerScreen.cityName!,
                          style: TextStyle(
                              fontSize: size.width * .09, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: size.width * 1,
                      width: size.width * .95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black.withOpacity(0.5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: size.width*0.015),
                            child: const DateText(label: "Agosto"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    DateText(
                                        label: controllerScreen.arrayDate[0]
                                            .toString()
                                            .substring(0, 2)),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: IconCustom(path: controllerScreen.arrayCondition[0]),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: DateText(
                                          label:
                                              "${controllerScreen.arrayTemperatureMax[0].toString()}º"),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    DateText(
                                        label: controllerScreen.arrayDate[1]
                                            .toString()
                                            .substring(0, 2)),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: IconCustom(path:controllerScreen.arrayCondition[1]),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: DateText(
                                          label:
                                              "${controllerScreen.arrayTemperatureMax[1].toString()}°"),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    DateText(
                                        label: controllerScreen.arrayDate[2]
                                            .toString()
                                            .substring(0, 2)),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: IconCustom(path: controllerScreen.arrayCondition[2]),
                                    ),
                                    Padding(
                                       padding:EdgeInsets.only(top: size.width*0.02),
                                      child: DateText(
                                          label:
                                              "${controllerScreen.arrayTemperatureMax[2].toString()}°"),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    DateText(
                                        label: controllerScreen.arrayDate[3]
                                            .toString()
                                            .substring(0, 2)),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: IconCustom(path: controllerScreen.arrayCondition[3]),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: DateText(
                                          label:
                                              "${controllerScreen.arrayTemperatureMax[3].toString()}°"),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    DateText(
                                        label: controllerScreen.arrayDate[4]
                                            .toString()
                                            .substring(0, 2)),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: IconCustom(path: controllerScreen.arrayCondition[4]),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: DateText(
                                          label:
                                              "${controllerScreen.arrayTemperatureMax[4].toString()}º"),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    DateText(
                                        label: controllerScreen.arrayDate[5]
                                            .toString()
                                            .substring(0, 2)),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: IconCustom(path: controllerScreen.arrayCondition[5]),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(top: size.width*0.02),
                                      child: DateText(
                                          label:
                                              "${controllerScreen.arrayTemperatureMax[5].toString()}º"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
    );
  }
}
