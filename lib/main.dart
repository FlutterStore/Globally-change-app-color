// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

Color appcolor = Colors.green;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List color = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.orange,
    Colors.purple,
    Colors.green ,
    Colors.grey,
    Colors.indigo,
    Colors.lime,
    Colors.pink,
    Colors.red,
    Colors.teal,
    Colors.white,
    Colors.yellow,
  ];

  List name = [
    'Amber',
    'Black',
    'Blue',
    'Brown',
    'Cyan',
    'Orange',
    'Purple',
    'Green',
    'Grey',
    'Indigo',
    'Lime',
    'Pink',
    'Red',
    'Teal',
    'White',
    'Yellow',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: const Text("App Color",style: TextStyle(fontSize: 15),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: color.length,
              itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  setState(() {
                    appcolor = color[index];
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen1()));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: color[index],
                  ),
                  title: Text(name[index]),
                  ),
              );
              },
              separatorBuilder: ((context, index) {
                return const Divider();
              }
            ) 
          )
          )
        ],
      ),
    );
  }
}


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Successoft Infotech",style: TextStyle(color: appcolor,fontSize: 35,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(appcolor)),
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: const Text("Previous")
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(appcolor)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen2()));
                    }, 
                    child: const Text("Next")
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appcolor,
        onPressed: (){},
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank You",style: TextStyle(fontSize: 35,color: appcolor,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(appcolor)),
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: const Text("Previous")
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(appcolor)),
                    onPressed: (){
                      SystemNavigator.pop();
                    }, 
                    child: const Text("Exit")
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
