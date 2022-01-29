import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  _settingsPageState createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Настройки', style: TextStyle(fontSize: 28, color: Colors.black),)   //заглавление страницы
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.values[5],
            children: [
              Row(
                children: [
                  TextButton(onPressed: () {},    //настройки приватности
                      child: Text('Приватность', style: TextStyle(fontSize: 20, color: Colors.black),)
                  )
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {},    //настройки уведомлений
                      child: Text('Уведомления', style: TextStyle(fontSize: 20, color: Colors.black),))
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {},    //настройки темы приложения
                      child: Text('Тема приложения', style: TextStyle(fontSize: 20, color: Colors.black),))
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {    //настройки аккаунта пользователя, если он есть, есле нет, то переадр. на окно входа в аккаунт
                    Navigator.pushNamed(context, '/accset');
                  },
                      child: Text('Настройки аккаунта', style: TextStyle(fontSize: 20, color: Colors.blue),))
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
