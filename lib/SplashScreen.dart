import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:homework/LoginPage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),
            () => Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context)=> LoginPage()),
                (route) => false));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Image.asset("assets/Abdullah.jpg"),
            SizedBox(height: 50,),
            Text('WellCome My App'),
            SpinKitThreeInOut(color: Colors.redAccent,),
          ],
        ),
      ),
    );
  }
}
