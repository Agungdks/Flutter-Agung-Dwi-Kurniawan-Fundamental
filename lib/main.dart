import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;
  tambah() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  kurang() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  bagi() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }

  kali() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[  
              Text(
              "Result : $result",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Masukkan angka pertama",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Masukkan angka kedua",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),       
            SizedBox(
              height: 20,
            ),   
         new Padding(
              padding: const EdgeInsets.all(12.0),
            ),
           new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                   color: Color.fromARGB(255, 64, 251, 148),
                  child: new Text(
                    "Tambah",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                    ),
                    onPressed: () {
                      tambah();
                      controller1.clear();
                      controller2.clear();
                    },
                    
                  )
              ],
            ),
        new Padding(
              padding: const EdgeInsets.all(12.0),
            ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                   color: Color.fromARGB(255, 255, 0, 0),
                  child: new Text(
                    "Kurang",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                    ),
                    onPressed: () {
                      kurang();
                      controller1.clear();
                      controller2.clear();
                    },
                  )
              ],
            ),
          new Padding(
              padding: const EdgeInsets.all(12.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                   color: Color.fromARGB(255, 38, 0, 255),
                  child: new Text(
                    "Kali",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                    ),
                    onPressed: () {
                      kali();
                      controller1.clear();
                      controller2.clear();
                    },
                  )
              ],
            ),
           new Padding(
              padding: const EdgeInsets.all(12.0),
            ),
              new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                   color: Color.fromARGB(255, 0, 102, 255),
                  child: new Text(
                    "Bagi",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                    ),
                    onPressed: () {
                      bagi();
                      controller1.clear();
                      controller2.clear();
                    },
                  )
              ],
            ),               
          ],)
        ),
    );
  }
}
