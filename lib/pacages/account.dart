import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountPage extends StatefulWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  _accountPageState createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Управление', style: TextStyle(color: Colors.black, fontSize: 28),),    //заглавление страницы
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle, size: 150, color: Colors.blueGrey),    //иконка аккаунта, может быть и фотография пользователя
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {    //кнопка должна вести на страницу управления аккаунтом Navigator.pushNamed(context, '/accset');, но пока ведёт на страницу входа
                    Navigator.pushNamed(context, '/login');
                  },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey),
                      child: Text('Управление аккаунтом', style: TextStyle(fontSize: 20, color: Colors.black),)
                  )
                ],
              ),                                //1
              Row(
                children: [
                  Icon(Icons.settings_outlined, color: Colors.black),   //иконка шестерни в настройках
                  TextButton(onPressed: () {    //кнопка для переадресации в настройки
                    Navigator.of(context).pushNamed('/settings');
                  },
                      child: Text('Настройки', style: TextStyle(fontSize: 20, color: Colors.black),))
                ],
              ),                                //2
              Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.black),    //иконка информации
                  TextButton(onPressed: () {},    //кнопка для переадресации в справку
                      child: Text('Справка', style: TextStyle(fontSize: 20, color: Colors.black),))
                ],
              ),                                //3
              Row(
                children: [
                  Icon(Icons.chat_outlined, color: Colors.black),   //иконка отзыва
                  TextButton(onPressed: () {},    //с отзыв
                      child: Text('Отзыв', style: TextStyle(fontSize: 20, color: Colors.black),))
                ],
              ), //4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {},    //кнопка для переадресации в политику конфед.
                      child: Text('Политика конфиденциальности', style: TextStyle(fontSize: 13, color: Colors.black),),),
                  Text('⋅', style: TextStyle(fontSize: 40, color: Colors.black),),    //данный симво используется для визуального разграничения двух кнопок
                  TextButton(onPressed: () {},    //кнопка для переадресации в правила использования
                      child: Text('Правила использования', style: TextStyle(fontSize: 13, color: Colors.black),))
                ],
              )   //5
            ],
          )
        ],
      )
    );
  }
}
