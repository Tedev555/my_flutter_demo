import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  MyCustomForm({Key key}) : super(key: key);

  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validation Form'),
      ),
      body: Container(
       child: Form(
         key: _formKey,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             TextFormField(
               validator: (value) {
                 //Here is logic for validations
                 if (value.isEmpty) {
                   return 'Enter some text';
                 }
                 return null;
               },
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16.0),
               child: RaisedButton(
                 onPressed: () {
                   if (_formKey.currentState.validate()) {
                     Scaffold.of(context)
                     .showSnackBar(SnackBar(content: Text('Processing Data')));
                   }
                 },
                 child: Text('Submit'),
               ),
             )
           ],
         ),
       ),
    ),
    );
  }
}