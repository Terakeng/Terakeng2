import 'package:flutter/material.dart';

class Produce extends StatefulWidget {
  Produce({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _Produce createState() => _Produce();
}

class _Produce extends State<Produce> {
  @override
  Widget build(BuildContext context) {
    //Scaffoldはビジュアルレイアウトを表示する
    return Scaffold(
        appBar: new AppBar(title: new Text('Produce')),
        //ボディ部分が表示内容
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Produce",
                      style: TextStyle(
                          fontSize: 32.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    Text(
                      " -作品一覧-",
                      style: TextStyle(
                          fontSize: 32.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ]),
              Card(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  '・PFCバランス計算表',
                  style: TextStyle(
                      fontSize: 28.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
              Card(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  '・Todo管理表',
                  style: TextStyle(
                      fontSize: 28.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
              Card(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  '・マネースケジュール帳',
                  style: TextStyle(
                      fontSize: 28.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
              Card(
                margin: EdgeInsets.all(30.0),
                child: Text(
                  '・マインドマップ',
                  style: TextStyle(
                      fontSize: 28.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
            ],
          ),
        ));
  }}