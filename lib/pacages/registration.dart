import 'package:flutter/material.dart';

class registrationPage extends StatefulWidget {
  const registrationPage({Key? key}) : super(key: key);

  @override
  _registrationPageState createState() => _registrationPageState();
}

class _registrationPageState extends State<registrationPage> {
  @override

  bool isChecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Регистрация', style: TextStyle(fontSize: 28, color: Colors.black),),   //заглавление окна
        backgroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text('Чтобы зарегистрироваться, \nзаполните поля ниже:', style: TextStyle(fontSize: 20, color: Colors.black),)    //надпись, уведомляющяя пользователя, что надо ввести след. данные
                ],
              ),
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
                            labelText: 'Логин',
                            hintText: 'Придумайте, чтобы не забыть',
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
                            labelText: 'Имя',
                            hintText: 'Ваше имя',
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
                            labelText: 'Дата рождения',
                            hintText: 'Ваша дата рождения',
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
                  Container(
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
                            hintText: 'Придумайте надёжный пароль',
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
                Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.blueGrey,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
                  Text('Я согласен с политикой конфидециальности.', style: TextStyle(fontSize: 15, color: Colors.black),)   //надпись, уведомляющяя пользователя, что он согласиля/не согласиля с условиями конф.
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: (){},   //кнопка для регистрации аккаунта пользователя
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text('Зарегистрироваться', style: TextStyle(fontSize: 30, color: Colors.black),)
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
