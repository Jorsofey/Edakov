import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
            Text('Вход', style: TextStyle(color: Colors.black, fontSize: 28)),    //заглавление страницы
          ],
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.values[4],
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                child: Text('Привет!\nЧтобы продолжить,\nпожалуйста войдите в аккаунт.', style: TextStyle(color: Colors.black, fontSize: 22, ),)    // надпись, уведомляющяя пользователя, что надо ввести след. данные
            ),
          ]
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                    width: 300.0,
                    child: TextField(
                      cursorColor: Colors.grey,
                        decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 1
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                            width: 4
                          )
                        ),
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        labelText: 'Эл. почта',
                        hintText: 'Формат: abc@gmail.com',
                        contentPadding: EdgeInsets.all(10),
                        ),
                        style:
                        TextStyle(
                        fontSize: 17.0,
                        height: 1,
                        color: Colors.blueGrey
                    )
                    )
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                    child: Container(
                        width: 300.0,
                        child: TextField(
                            obscureText: true,    //скрывает текст, который был введён в поле пароля
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                        width: 1
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                      width: 4
                                    )
                                ),
                                labelStyle: TextStyle(color: Colors.blueGrey),
                                labelText: 'Пароль',
                                hintText: 'Ваш пароль',
                                contentPadding: EdgeInsets.all(10)
                            ),
                            style: TextStyle(
                                fontSize: 17.0,
                                height: 1,
                                color: Colors.black
                            )
                        )
                    ),
                    )
                  ],
                )
              ]
            )
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: (){   //
                Navigator.of(context).pushNamed('/registration');
              },
                  child: Text('Создать аккаунт', style: TextStyle(fontSize: 15, color: Colors.blueGrey),)   //кнопка для переадресации в окно создания аккаунта/регистрации
              ),
              Text('•', style: TextStyle(fontSize: 20, color: Colors.blueGrey),),   //данный симво используется для визуального разграничения двух кнопок
              TextButton(onPressed: (){},
                  child: Text('Условия пользования', style: TextStyle(fontSize: 15, color: Colors.blueGrey),)   //кнопка для переадресации в условия пользования
              )
            ],
          )
        ],
      )
    );
  }
}
