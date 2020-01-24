import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter para iniciantes: aula 06'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text('Cliente'),
            activeIcon: Icon(Icons.accessibility, color: Colors.green[800])
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text('Imprimir'),
            activeIcon: Icon(Icons.print, color: Colors.blue[700])
          ),

        ],
    ),

      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
        elevation: 10,
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.refresh)
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Clique no botão abaixo e veja o que acontece',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
