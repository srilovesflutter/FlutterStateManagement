import 'package:flutter/material.dart';

import 'mydrawer.dart';

class InheritedWidgetParameter extends InheritedWidget {
  final int counter;

  InheritedWidgetParameter(this.counter, Widget child) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class InheritedWidgetPage extends StatefulWidget {
  @override
  _InheritedWidgetPageState createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Inherited Widget Technique'),
      ),
      body: new InheritedWidgetParameter(counter, InheritedWidgetChild()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class InheritedWidgetChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = context
        .dependOnInheritedWidgetOfExactType<InheritedWidgetParameter>()
        .counter;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Inherited Widget Technique',
          ),
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
