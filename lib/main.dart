import 'package:flutter/material.dart';
import 'model/contact.dart';
import 'model/list_contact.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo List View'),
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
  //final data=['A','B','C','D','E','F','G'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      //Static ListView
      // ListView(
      //   children:
        // ListTile.divideTiles(color: Colors.black, tiles: [
        //   ListTile(
        //     title: Text('A'),
        //   ),
        //   ListTile(
        //     title: Text('B'),
        //   ),
        //   ListTile(
        //     title: Text('C'),
        //   )
        // ]).toList(),
        //infinity list
      // ListView.builder(
      //     //itemCount: data.length,
      //     itemBuilder: (context,index){
      //   return ListTile(title: Text('$index'),
      //   );
      //   }
      // ) // This trailing comma makes auto-formatting nicer for build methods.
      ListView.builder(
        //scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context,index){
          return Padding(padding: const EdgeInsets.all(16),
          child: Container( width: 40, height: 60,color: Colors.red,
            child: Text('${data[index].name}'),
          ),
          );
        },
      )
    );
  }
}
