import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(//scaffolf constructed by appbard and body
        appBar: AppBar(
          backgroundColor: Colors.green,
          // leading: IconButton(
          //   icon: const Icon(Icons.menu),
          // ),
          title: const Text('Remote Car'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.directions_bike),
              onPressed: () {

              }, 
            ),
            IconButton(
              onPressed: (){

              }, 
              icon: const Icon(Icons.directions_bus),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context){
                return[
                  const PopupMenuItem(child: Text('Boat'),),
                  const PopupMenuItem(child: Text('Train'),),
                ];
              },
            ),
          ],
        ),
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              width: 375.0,
              height: 375.0,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          minimumSize: Size(100, 100)
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          "Forward",
                          style: TextStyle(fontSize: 24),
                          ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          minimumSize: Size(100, 100)
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          "Left",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          minimumSize: Size(100, 100),
                          backgroundColor: Colors.red
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          "Stop",
                          style: TextStyle(fontSize:24 ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          minimumSize: Size(100, 100)
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          "Right",
                          style: TextStyle(fontSize: 24)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            minimumSize: Size(100, 100),
                            
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          "Reverse",
                          style: TextStyle(fontSize: 24)
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                
                },
                child: const Text(
                  'STOP',
                  style: TextStyle(fontSize: 32),
                  ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  minimumSize: Size(200, 100),
                  backgroundColor: Colors.red
                ),
              ),
              
            ],
          )
        ]
      ),
      ),
    );
  }
}