import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  var size, height, width, heightPercent, widthPercent;
  Color _color1 = Color(0xffa863b3);
  Color _color2 = Color(0x00000000);

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
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    heightPercent = height / 100;
    widthPercent = width / 100;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30),
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/ophlogo1.png',
              height: heightPercent * 9.5,
            ),
          ),
          SizedBox(
            height: heightPercent * 6,
          ),
          Center(
            child: Image.asset(
              'assets/asset2.png',
              height: heightPercent * 23,
            ),
          ),
          SizedBox(
            height: heightPercent * 5,
          ),
          Center(
            child: Text(
              "VERIFICATION",
              style: TextStyle(
                  color: _color1, fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          SizedBox(
            height: heightPercent * 2,
          ),
          Center(
            child: Text(
              "You Will Get OTP via SMS",
              style: TextStyle(color: _color1, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: heightPercent * 6,
          ),
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _color2, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: _color2),
                ),
                contentPadding: EdgeInsets.only(left: 10),
                hintText: '* * * * * *',
                hintStyle: TextStyle(color: _color1),
                helperStyle: TextStyle(
                  color: _color1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: heightPercent * 8,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: const EdgeInsets.only(
                    left: 47.0, right: 47.0, top: 11.0, bottom: 11.0),
              ),
              onPressed: () {},
              child: const Text('VERIFY'),
            ),
          ),
          SizedBox(
            height: heightPercent * 3,
          ),
          Center(
            child: Text(
              'Didn\'t Received the Verification OTP ? Resend OTP',
              style: TextStyle(color: _color1),
            ),
          )
        ],
      ),
    );
  }
}
