import 'package:flutter/material.dart';
import 'package:todo3/pacages/home.dart';
import 'package:todo3/pacages/login.dart';
import 'package:todo3/pacages/account.dart';
import 'package:todo3/pacages/registration.dart';
import 'package:todo3/pacages/settings.dart';
import 'package:todo3/pacages/account setting.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
      primaryColor: Colors.lightBlue
  ),
  initialRoute: '/',
  routes: {
    '/' : (context) => homePage(),    //путь на домашнюю страницу
    '/login' : (context) => loginPage(),    //путь на старницу входа в аккаунт
    '/account' : (context) => accountPage(),    //путь на старницу управления настройками приложения и аккаунта
    '/registration': (context) => registrationPage(),   //путь на страницу регистрации
    '/settings' : (context) => settingsPage(),    //путь на страницу настроек
    '/accset' : (context) => accountSettings()    //путь на страницу управления аккаунтом
  },
));
