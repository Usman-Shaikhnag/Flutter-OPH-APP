import 'package:flutter/material.dart';
import 'package:oph_app/main.dart';
import 'package:oph_app/screen/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var size, height, width, heightPercent, widthPercent;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    heightPercent = height / 100;
    widthPercent = width / 100;
    return Scaffold(
        body: WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Container(
        color: Colors.white,
        child: Stack(children: <Widget>[
          /** Positioned WIdget **/
          Positioned(
              top: -heightPercent * 10,
              left: widthPercent * 32,
              child: Image.asset(
                'assets/ophlogo1.png',
                height: heightPercent * 37,
                width: widthPercent * 37,
              ) //Icon
              ),
          Positioned(
              top: heightPercent * 35,
              left: widthPercent * 35,
              child: Image.asset(
                'assets/ophlogo2.png',
                height: heightPercent * 37,
                width: widthPercent * 37,
              ) //Icon
              ),
          Positioned(
              bottom: -85.0,
              left: widthPercent * 35,
              child: Image.asset(
                'assets/Esehatlogo.png',
                height: heightPercent * 37,
                width: widthPercent * 37,
              ) //Icon
              ),
        ]
            // child: Image.asset(
            //   'assets/Esehatlogo.png',
            //   height: heightPercent * 10,
            //   width: widthPercent * 10,
            // ),
            ),
      ),
    ));
  }

  void _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
