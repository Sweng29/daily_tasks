import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarMenu = [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: new Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        title: new Text('Options'),
      ),
    ];
    return MaterialApp(
      title: 'Daily Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavigationBarMenu,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 8.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.green,
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
