import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class accountSettings extends StatefulWidget {
  const accountSettings({Key? key}) : super(key: key);

  @override
  _accountSettingsState createState() => _accountSettingsState();
}

class _accountSettingsState extends State<accountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.account_circle, size: 50, color: Colors.grey),   //иконка аккаунта, может быть и фотография пользователя
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Имя пользователя', style: TextStyle(fontSize: 20, color: Colors.black),),   //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                  ],
                ),
                Row(
                  children: [
                    Text('Почта пользователя', style: TextStyle(fontSize: 15, color: Colors.black),)    //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Center(
                    child: Text('Информация', style: TextStyle(fontSize: 30, color: Colors.black),),    //заглавление страницы
                  )
                ],
              ),
              Row(
                children: [
                  Text('Имя:',  style: TextStyle(fontSize: 15, color: Colors.black),),    //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                ],
              ),
              Row(
                children: [
                  Text('Дата рождения:',  style: TextStyle(fontSize: 15, color: Colors.black),),    //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                ],
              ),
              Row(
                children: [
                  Text('Email:',  style: TextStyle(fontSize: 15, color: Colors.black),)     //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                ],
              ),
              Row(
                children: [
                  Text('Пароль:',  style: TextStyle(fontSize: 15, color: Colors.black),)    //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                ],
              ),
              Row(
                children: [
                  Text('Логин:',  style: TextStyle(fontSize: 15, color: Colors.black),)   //далее будет выводиться информация, которую ввёл пользователь в соответсвующий пункт при регистрации
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {},    //кнопка для обращения к поддержке приложения
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text('Тех. поддержка', style: TextStyle(fontSize: 25, color: Colors.black))
                  )
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {},    //кнопка для выхода из аккаунта
                      child: Text('Выйти', style: TextStyle(fontSize: 20, color: Colors.red)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: (){},   //кнопка для переадресации в политику конфед.
                      child: Text('Политика конфиленциальности', style: TextStyle(fontSize: 13, color: Colors.blueGrey),)),
                  Text('•', style: TextStyle(fontSize: 20, color: Colors.blueGrey),),   //данный симво используется для визуального разграничения двух кнопок
                  TextButton(onPressed: (){},   //кнопка для переадресации в условия пользования
                      child: Text('Условия пользования', style: TextStyle(fontSize: 13, color: Colors.blueGrey),))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
