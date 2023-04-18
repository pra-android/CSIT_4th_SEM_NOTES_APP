import 'package:csit4thsemnotes/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.blue.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 0,),
              Center(child: Image.asset("assets/reading.png",height: 390,)),
              SizedBox(height:25),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Hello User !",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 24,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ]
              ),
              
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                    "Do you feel confident on your academics ? This is the platform that includes notes and many other stuffs.",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.normal)),
              )),
              SizedBox(height: 20,),
               InkWell(
                
                child: Container(
                  height: 55,
                  width: 320,
                  child: Center(
                      child: Text(
                    "Think and Learn Faster",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  });
                },
                child: Container(
                  height: 55,
                  width: 320,
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 22),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 40,),
              Text("Developed by: Prabin Bhattarai ©",style: TextStyle(fontSize:11,color: Colors.white.withOpacity(0.6))),
            ],
          ),
        )
    );
  }
}