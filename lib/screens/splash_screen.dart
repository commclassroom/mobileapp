import 'package:flutter/material.dart';
import 'package:mobileapp/screens/home_screen.dart';

class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
@override
  void initState() {
  splash();
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //making it fully responsive for different screens
        children:[ Expanded(

          child: Image.asset("public/images/Splash Screen.png",fit: BoxFit.fitWidth,),
        ),
        ]
      ),
    );
  }
  void splash()async{
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
  }
}
