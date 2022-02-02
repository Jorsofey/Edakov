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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
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
                      Text('Сохранённые', style: TextStyle(color: Colors.black, fontSize: 20))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}
