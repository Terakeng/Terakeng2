import 'package:flutter/material.dart';
import './teraoka.dart';
import './PFCbalance.dart';
import './produce.dart';
void main() => runApp(MyApp());

//ウィジェットのクラスはステートを持たないStatelessWidgetか
//ステートを持つStatefulWidgetを継承する
class MyApp extends StatelessWidget {
  //ウィジェット生成の際に呼び出されるメソッド
  @override
  Widget build(BuildContext context) {
    //マテリアルデザインのアプリを管理するクラスのインスタンスをリターンしている
    //引数には画面に表示するウィジェットを設定している
    return MaterialApp(
      title: 'PFCバランス',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //homeに設定されるのはwidgetクラスでないといけない
      //MyHomePageはStatefulWidgetを継承しているためスーパークラスがWidgetクラスとなる
      home: WidgetBasic(title: 'PFCバランス'),
    );
  }
}
class WidgetBasic extends StatefulWidget {
  //コンストラクタ
  //ウィジェットには識別IDとしてKeyが自動で与えられるが利用されないケースが多い
  WidgetBasic({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _WidgetBasic createState() => new _WidgetBasic();
}

class _WidgetBasic extends State<WidgetBasic> {
 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Colors.orange[500],
      ),
      body: Column(children: <Widget>[
         FlatButton(
            key: null,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Profile()));
            },
            color: Colors.orange[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ))),
          FlatButton(
            key: null,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new PFCbalance()));
            },
            color: Colors.orange[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "What's PFC balance",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ))),
          FlatButton(
            key: null,
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Produce()));
            },
            color: Colors.orange[100],
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Produce",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ))),
                ],
    ),);
  }
}
