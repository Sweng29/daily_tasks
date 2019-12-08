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
        home: Home());
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                color: Colors.black,
                onPressed: () {
                  _showMenuModal(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                color: Colors.black,
                onPressed: () {
                  print('Options selected..');
                },
              ),
            ],
          ),
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          elevation: 8.0,
          notchMargin: 5.0,
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

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

void _showMenuModal(BuildContext ctxt) {
  showModalBottomSheet<void>(
      context: ctxt,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return new Column(
          mainAxisSize: MainAxisSize.min,
          children: ListTile.divideTiles(
            context: ctxt,
            tiles: [
              ListTile(
                title: new Text(
                  'My Tasks',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.add),
                title: new Text('Create new list'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.add),
                title: new Text('Create new list'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(Icons.feedback),
                title: new Text('Help and feedback'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Open-source licences',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Privacy Policy',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      ' - ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Terms or service',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ).toList(),
        );
      });
}

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                'My Tasks',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  wordSpacing: 2.0,
                  fontFamily: 'Rubik',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            noteList(context),
          ],
        ),
      ),
    );
  }

  Widget noteList(BuildContext context) {
    SingingCharacter _character = SingingCharacter.Horse;

    return ListView(
      shrinkWrap: true,
      children: ListTile.divideTiles(context: context, tiles: [
        ListTile(
          title: GestureDetector(
            child: Text('Complete Profile module'),
            onTap: () {
              print('Horse clicked');
            },
          ),
          leading: Icon(
            Icons.radio_button_unchecked,
          ),
        ),
        ListTile(
          title: Text('Complete User module'),
          leading: Icon(
            Icons.radio_button_unchecked,
          ),
        ),
        ListTile(
          title: Text('Complete Registration module'),
          leading: Icon(
            Icons.radio_button_unchecked,
          ),
        ),
        ListTile(
          title: Text('Complete Product module'),
          leading: Icon(
            Icons.radio_button_unchecked,
          ),
        ),
        ListTile(
          title: Text('Complete Orders module'),
          leading: Icon(
            Icons.radio_button_unchecked,
          ),
        ),
      ]).toList(),
    );
  }
}

enum SingingCharacter { Horse, Goat, Sheep, Camel, Cow }
