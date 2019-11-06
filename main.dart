import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(new Myapp());
}

class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: new Login(),
    );
  }

}

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Login();
  }

}

class _Login extends State<Login>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Loginapp'),
      ),
      body:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex:2,
          child: new Container(
            margin: EdgeInsets.only(bottom: 20.0),
            padding: EdgeInsets.all(0.0),
            height: 150,
            width: 200,
            child: Image.asset('asset/bubt.jpg'),
          ),
          ),
          Expanded(
            flex: 3,
            child:   ListView(
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new Container(
                    child: new TextFormField(
                      style: TextStyle(fontSize: 20),
                      decoration: new InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new Container(
                    child: new TextFormField(
                      style: TextStyle(fontSize: 20),
                      decoration: new InputDecoration(
                          hintText: "Enter your Password",
                          hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: new RaisedButton(
              color: Colors.black87,
              onPressed: (){

              },
              child: new Text('Click',style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }

}