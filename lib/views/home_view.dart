import 'package:counter/controllers/counter_controller.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  static final String title = 'Counter';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyHomePage.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Value',
            ),
            Text(
              '${_controller.counter}',
              style: Theme.of(context).textTheme.display1,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  createDecreaseButton(),
                  createIncreaseButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createDecreaseButton() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.model.decrementCounter();
          });
        },
        child: Icon(Icons.remove));
  }

  Widget createIncreaseButton() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.model.incrementCounter();
          });
        },
        child: Icon(Icons.add));
  }
}
