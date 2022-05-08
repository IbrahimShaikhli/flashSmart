
import 'package:flashsmart/flash_smart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());

}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash Smart',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //all screen stuff goes here//
    return Scaffold(
      appBar: AppBar(
        title: Text('Flash Smart'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              child:Image(image: AssetImage('fdata/kon.png'),)
                ,
            ),
              onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>FlashSmart(),));
              }
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image(image: AssetImage('fdata/ar.png'),),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image(image: AssetImage('fdata/en.png'),),
          ),
        ],
      ),
    );
  }
}
