import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/items.dart';

void main() => runApp(HomePage());

/// This Widget is the main application widget.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME PAGE'),
        backgroundColor: Color.fromARGB(201, 195, 114, 8),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("USER NAME"),
              accountEmail: Text("abc@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("Profile"),
              ),
            ),
            Divider(
              height: 4,
            ),
            MaterialButton(
              child: Text('sales'),
              color: Color(0xffEE7B23),
              onPressed: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context)=>Salespage()) );
              },
            ),
            MaterialButton(
              child: Text('purchse'),
              color: Color(0xffEE7B23),
              onPressed: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context)=>Salespage()) );
              },
            ),
            MaterialButton(
              child: Text('report'),
              color: Color(0xffEE7B23),
              onPressed: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context)=>Salespage()) );
              },
            ),
            MaterialButton(
              child: Text('Items'),
              color: Color(0xffEE7B23),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Items()));
              },
            )
          ],
        ),
      ),
    );
  }
}
