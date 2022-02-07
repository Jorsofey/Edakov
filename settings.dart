import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  _settingsPageState createState() => _settingsPageState();
}
bool click = true;

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 59, 74, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(65, 59, 74, 1),
        toolbarHeight: 150,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.account_circle,
                  color: Colors.grey,
                  size: 100,),
                Row(
                  children: [
                    TextButton(onPressed: () {},
                        child: Text('* Имя пользователя', style: TextStyle(color: Colors.white, fontSize: 20),))
                  ],
                ),
              ]
            ),
            Column(
              children: [
                IconButton(onPressed: () {
                    setState(() {
                    click = !click;
                    });
                    },
                      icon: Icon((click == false) ? Icons.wb_sunny : Icons.dark_mode,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
              ],
            )
          ],
        ),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  border: Border.all(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 8),
                                    child: Image(
                                      image: AssetImage("assets/images/booksmark.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                  TextButton(onPressed: () {},
                                      child: Text('Сохранённые', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.play_circle_outline),
                                  TextButton(onPressed: (){},
                                      child: Text('   Читаю          ', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.stop_circle_outlined),
                                  TextButton(onPressed: () {},
                                      child: Text('   Прочитанно  ', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.volunteer_activism),
                                  TextButton(onPressed: () {},
                                      child: Text('   Любимое     ', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  border: Border.all(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15) )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.pause_circle_outline),
                                  TextButton(onPressed: () {},
                                      child: Text('   Заброшенное', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                          ],
                        )
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  border: Border.all(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.lock_outline_rounded),
                                  TextButton(onPressed: () {},
                                      child: Text('   Конфедициальность', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.brush_outlined),
                                  TextButton(onPressed: () {},
                                      child: Text('   Оформление     ', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.notification_important_outlined),
                                  TextButton(onPressed: () {},
                                      child: Text('   Уведомление и звуки', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  border: Border.all(
                                      color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15) )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.language_outlined),
                                  TextButton(onPressed: () {},
                                      child: Text('   Язык', style: TextStyle(color: Colors.black, fontSize: 20))),
                                  Icon(Icons.chevron_right_sharp, color: Colors.white)
                                ],
                              ),
                            ),
                          ],
                        ),

                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Column(
                        children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.chat_outlined),
                                TextButton(onPressed: () {},
                                    child: Text('   Помощь', style: TextStyle(color: Colors.black, fontSize: 20))),
                                Icon(Icons.chevron_right_sharp, color: Colors.white)
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 1),
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15) )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.question_answer_outlined),
                                TextButton(onPressed: () {},
                                    child: Text('   Справка', style: TextStyle(color: Colors.black, fontSize: 20))),
                                Icon(Icons.chevron_right_sharp, color: Colors.white)
                              ],
                            ),
                          )
                        ],
                      ),

                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
  }
}
