import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator Number Text'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textControllerInput = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: new TextField(
                  decoration: new InputDecoration.collapsed(
                      hintText: '0', hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                  controller: _textControllerInput,
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.number,
                )),
          )
        ],
      ),
    );
  }
}
