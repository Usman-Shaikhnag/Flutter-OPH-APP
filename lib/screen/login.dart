import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oph_app/screen/verification.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var size, height, width, heightPercent, widthPercent;
  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;

  Color _underlineColor = Color(0xFFCCCCCC);
  Color _mainColor = Color(0xFF07ac12);
  Color _color1 = Color(0xFF515151);
  Color _color2 = Color(0xff777777);
  Color _color3 = Color(0xFFaaaaaa);
  Color _color4 = Color(0xffa863b3);

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_off;
      } else {
        _iconVisible = Icons.visibility;
      }
    });
  }

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
            height: heightPercent * 5,
          ),
          Center(
            child: Image.asset(
              'assets/ophlogo2.png',
              height: heightPercent * 10,
            ),
          ),
          SizedBox(
            height: heightPercent * 5,
          ),
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: TextFormField(
              style: TextStyle(color: _color1),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _color4, width: 2.0)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: _underlineColor),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.purple)),
            ),
          ),
          SizedBox(
            height: heightPercent * 4,
          ),
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: TextFormField(
              obscureText: _obscureText,
              style: TextStyle(color: _color1),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _color4, width: 2.0)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: _underlineColor),
                ),
                contentPadding: EdgeInsets.only(left: 10),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.purple),
              ),
            ),
          ),
          SizedBox(
            height: heightPercent * 4,
          ),
          const Center(
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: heightPercent * 24,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: const EdgeInsets.only(
                    left: 47.0, right: 47.0, top: 4.0, bottom: 4.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Verification()));
              },
              child: const Text('Log in'),
            ),
          ),
          SizedBox(
            height: heightPercent * 3,
          ),
          const Center(
            child: Text(
              'Need help?',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
