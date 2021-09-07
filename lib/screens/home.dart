import 'package:flutter/material.dart';
import '../components/bottomnavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        appBarTheme: AppBarTheme( 
          backgroundColor: Colors.blue[700],
        ),

      
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Community Classroom'),
          ),
        ),

        drawer: Drawer(  

        ),

       bottomNavigationBar: BottomBar(current_index: 0),

      ),
    );
  }
}