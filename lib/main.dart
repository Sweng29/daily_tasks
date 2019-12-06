import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
            ),
            height: 50.0,
            padding: EdgeInsets.all(10.0),
          ),
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          elevation: 8.0,
          notchMargin: 3.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.green,
            size: 28,
          ),
          backgroundColor: Colors.white,
          elevation: 8.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: TaskView(),
      ),
    );
  }
}

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new Text(
          'Your notes here..',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
