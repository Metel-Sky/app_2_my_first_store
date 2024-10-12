import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text('You did it!'),
      ),
      resizeToAvoidBottomInset: false,//Это гарантирует, что внешний вид клавиатуры не изменит размер домашней страницы или ее виджетов.
    );//1
  }
}

