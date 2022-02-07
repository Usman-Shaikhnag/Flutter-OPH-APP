import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oph_app/screen/login.dart';
import '../mylibrary/page_model.dart';
import '../mylibrary/overboard.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _pageList = [
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/Esehatlogo.png',
        title: 'Tutorial 1',
        body: 'This is description of tutorial 1. Lorem ipsum dolor sit amet.',
        doAnimateImage: true),
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/ophlogo1.png',
        //imageFromUrl: GLOBAL_URL + '/assets/images/onboarding/cart.png',
        title: 'Tutorial 2',
        body: 'This is description of tutorial 2. Lorem ipsum dolor sit amet.',
        doAnimateImage: true),
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/ophlogo2.png',
        //imageFromUrl: GLOBAL_URL + '/assets/images/onboarding/delivery.png',
        title: 'Tutorial 3',
        body: 'This is description of tutorial 3. Lorem ipsum dolor sit amet.',
        doAnimateImage: true),
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/Esehatlogo.png',
        title: 'Tutorial 4',
        body: 'This is description of tutorial 4. Lorem ipsum dolor sit amet.',
        doAnimateImage: true),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
      child: OverBoard(
        pages: _pageList,
        showBullets: true,
        finishCallback: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Login()));
          // Fluttertoast.showToast(
          //     msg: 'Click finish', toastLength: Toast.LENGTH_SHORT);
        },
      ),
    ));
  }
}
