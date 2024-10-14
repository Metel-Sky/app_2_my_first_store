import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //
  //
  List<Card> _buildGridCard(int count) {//---------генератор карток
    List<Card> cards = List.generate(
      count,
      (int index) {
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18 / 11,
                child: Image.asset('assets/diamond.png'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Title'),
                    SizedBox(height: 8.0),
                    Text('Secondary Text'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    return cards;
  }

  //134
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        //
        //-----Icon MENU -----
        //
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        //
        //----TITLE----
        //
        title: Text('SHRINE'),
        centerTitle: true,
        //
        //
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('filter button');
            },
          ),
        ],
      ),
      //

      body: GridView.count(
        crossAxisCount: 2,
        //--^--указывает количество элементов. Нам нужны 2 столбца.
        padding: EdgeInsets.all(12),
        childAspectRatio: 8 / 9,
        //--^--определяет размер элементов на основе соотношения сторон (ширина по высоте).
        children:
          _buildGridCard(10),
        //--^--генерує 10 карток
      ),
      resizeToAvoidBottomInset:
          false, //--^--Это гарантирует, что внешний вид клавиатуры не изменит размер домашней страницы или ее виджетов.
    ); //12
  }
}
