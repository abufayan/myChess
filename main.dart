import 'package:flutter/material.dart';


import 'package:mychess/signup.dart';
import 'login_page.dart';
import 'game_page.dart';
import '_first_page.dart';

void main() {
  runApp( 
  MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' :(context) => firstPage(),
      '/login' :(context) => loginPage(),
      '/sign' :(context) => signInPage(),
      '/game' :(context) => gamePage(),
      
    },
  )
  );
}