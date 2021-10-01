import 'package:flutter/material.dart';
import 'package:mobileapp/main.dart';
import 'package:mobileapp/pages/homepage.dart';
// import 'package:unitap/routes/routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool animation = false;
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assests/images/vector.png'),
                ),
                Spacer(),
                Container(
                  child: Image.asset('assests/images/vector (2).png'),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                'assests/images/logo.png',
                width: 300,
              ),
            ),
            Container(
              width: 150,
              child: LinearProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.blue,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assests/images/vector (1).png',
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
