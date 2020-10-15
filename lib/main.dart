import 'package:fastfood/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        seconds: 4,
        navigateAfterSeconds: HomeScreen(),
        title: Text('Selamat Datang Selamat Menikmati',
          style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white,
              fontSize: 20.0)
        ),
        image: Image.asset('images/splash.png'),
        backgroundColor: Colors.teal,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.white
      )
    );
  }
}