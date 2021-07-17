import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listview_product.dart';

class Tabs extends StatefulWidget{
  @override
  _Tabs createState() => _Tabs();

}

Widget products(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      
      Container(
        alignment: Alignment.centerLeft,
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.fastfood,
              color: Color(0xFF003823)
            ),
           hintText: 'Productos',
           hintStyle: TextStyle(
             color: Colors.black
           )
          ),
        ),
      )
    ],
  );
}

Widget noti(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      
      Container(
        alignment: Alignment.centerLeft,
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.notifications_active,
              color: Color(0xFF003823)
            ),
           hintText: 'Notificaciones',
           hintStyle: TextStyle(
             color: Colors.black
           )
          ),
        ),
      )
    ],
  );
}

Widget caducado(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      
      Container(
        alignment: Alignment.centerLeft,
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.date_range,
              color: Color(0xFF003823)
            ),
           hintText: 'Caducados',
           hintStyle: TextStyle(
             color: Colors.black
           )
          ),
        ),
      )
    ],
  );
}



class _Tabs extends State<Tabs>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
             backgroundColor: Color(0xFF00A868),
             
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.fastfood)),
                Tab(icon: Icon(Icons.date_range)),
                Tab(icon: Icon(Icons.notifications_active)),
              ],
            ),
            title: Text('Inventory⭐Star'),
          ),
          body: TabBarView(
            children: [
              ListViewProduct(),
              caducado(),
              noti(),
            ],
          ),
        ),
      ),
    );
  }
}