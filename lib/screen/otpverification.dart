import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  var size, height, width, heightPercent, widthPercent;
  Color _color1 = Color(0xffa863b3);
  Color _color2 = Color(0x00000000);

  bool _buttonDisabled = true;
  String _verificationCode = '';
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
    // return Scaffold(
    //   body: ListView(
    //     padding: EdgeInsets.all(30),
    //     children: <Widget>[
    //       Center(
    //         child: Image.asset(
    //           'assets/ophlogo1.png',
    //           height: heightPercent * 9.5,
    //         ),
    //       ),
    //       SizedBox(
    //         height: heightPercent * 6,
    //       ),
    //       Center(
    //         child: Image.asset(
    //           'assets/asset2.png',
    //           height: heightPercent * 23,
    //         ),
    //       ),
    //       SizedBox(
    //         height: heightPercent * 5,
    //       ),
    //       Center(
    //         child: Text(
    //           "VERIFICATION",
    //           style: TextStyle(
    //               color: _color1, fontWeight: FontWeight.bold, fontSize: 22),
    //         ),
    //       ),
    //       SizedBox(
    //         height: heightPercent * 2,
    //       ),
    //       Center(
    //         child: Text(
    //           "You Will Get OTP via SMS",
    //           style: TextStyle(color: _color1, fontSize: 14),
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //       SizedBox(
    //         height: heightPercent * 6,
    //       ),
    //       Material(
    //         elevation: 2.0,
    //         borderRadius: BorderRadius.all(Radius.circular(6)),
    //         child: TextFormField(
    //           keyboardType: TextInputType.phone,
    //           textAlign: TextAlign.center,
    //           decoration: InputDecoration(
    //             focusedBorder: OutlineInputBorder(
    //                 borderSide: BorderSide(color: _color2, width: 2.0)),
    //             enabledBorder: UnderlineInputBorder(
    //               borderSide: BorderSide(color: _color2),
    //             ),
    //             contentPadding: EdgeInsets.only(left: 10),
    //             hintText: '* * * * * *',
    //             hintStyle: TextStyle(color: _color1),
    //             helperStyle: TextStyle(
    //               color: _color1,
    //             ),
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: heightPercent * 8,
    //       ),
    //       Center(
    //         child: ElevatedButton(
    //           style: ElevatedButton.styleFrom(
    //             primary: Colors.purple,
    //             padding: const EdgeInsets.only(
    //                 left: 47.0, right: 47.0, top: 11.0, bottom: 11.0),
    //           ),
    //           onPressed: () {},
    //           child: const Text('VERIFY'),
    //         ),
    //       ),
    //       SizedBox(
    //         height: heightPercent * 3,
    //       ),
    //       Center(
    //         child: Text(
    //           'Didn\'t Received the Verification OTP ? Resend OTP',
    //           style: TextStyle(color: _color1),
    //         ),
    //       )
    //     ],
    //   ),
    // );
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.fromLTRB(30, 120, 30, 30),
      children: <Widget>[
        Center(child: Icon(Icons.phone_android, color: _color1, size: 50)),
        SizedBox(height: 20),
        Center(
            child: Text(
          'Enter the Verification Code',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: _color2),
        )),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Text(
            'The verification code has been sent via sms to 0811888999',
            style: TextStyle(fontSize: 13, color: _color1),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: PinCodeTextField(
            autoFocus: true,
            appContext: context,
            keyboardType: TextInputType.number,
            length: 4,
            showCursor: false,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: _color1,
                activeColor: _color1,
                selectedColor: _color1),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            onChanged: (value) {
              setState(() {
                if (value.length == 4) {
                  _buttonDisabled = false;
                } else {
                  _buttonDisabled = true;
                }
                _verificationCode = value;
              });
            },
            beforeTextPaste: (text) {
              return false;
            },
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: SizedBox(
              width: double.maxFinite,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) =>
                          _buttonDisabled ? Colors.grey[300]! : _color1,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    )),
                  ),
                  onPressed: () {
                    if (!_buttonDisabled) {
                      print(_verificationCode);
                      FocusScope.of(context).unfocus();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _buttonDisabled
                              ? Colors.grey[600]
                              : Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ))),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Wrap(
            children: [
              Text(
                "Didn't receive the code? ",
                style: TextStyle(fontSize: 13, color: _color1),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Resend',
                  style: TextStyle(fontSize: 13, color: _color1),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
