import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

String login = '';
String password = '';

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar( toolbarHeight: 70,    //увеличение высоты бара
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Row(//profile and title
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 8),
                  child: IconButton(onPressed: () {   //кнопка аккаунта
                    Navigator.of(context).pushNamed('/account');
                  },
                      icon: Icon(Icons.account_circle, size: 49, color: Colors.blueGrey,)),),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 25),
                    child: Text('Главная', style: TextStyle(color: Colors.black, fontSize: 28),)    //заглавление страницы
                  )
                ],
              )],
            ),
            Column(
              children: [Row(                                         //search and notification
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 45, color: Colors.blueGrey,)),    //кнопка поиска
                  Padding(padding: EdgeInsets.only(left: 15),),
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none, size: 45, color: Colors.blueGrey,)),    //кнопка уведомлений
                ],
              )],
            ),
          ],
        )
      ),
    );
  }
}
