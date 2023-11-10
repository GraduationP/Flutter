import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Row(children: [
          CircleAvatar(
            radius: 19.0,
            child: ClipOval(child: Image.asset('assests/images/Img3.jpg')),
          ),
          const Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Person", style: TextStyle(color: Colors.white)),
          ),
        ]),
        backgroundColor: Colors.black,
        leading:
            const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        actions: const [
          Icon(
            Icons.video_call_sharp,
            color: Colors.white,
            size: 35.0,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.call,
            color: Colors.white,
            size: 30.0,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 30.0,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assests/images/Img_BG.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assests/images/Img2.jpg'),
              ),
            ),
            Container(
                width: 270,
                height: 60,
                child: Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      filled: false,
                      hintStyle: const TextStyle(color: Colors.white),
                      hintText: "This is My First Message",
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                  ),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 270,
              height: 60,
              child: Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    filled: false,
                    hintStyle: const TextStyle(color: Colors.white),
                    hintText: "This is My Second Message",
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assests/images/Img1.jpg'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 350,
        ),
        Row(children: [
          Container(
            alignment: Alignment.bottomLeft,
            width: 340,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                suffixIcon: const Icon(
                  Icons.attach_file,
                  color: Colors.white,
                  size: 35,
                ),
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(35.0),
                ),
                filled: false,
                hintStyle: const TextStyle(color: Colors.white),
                hintText: "Type a Messege",
              ),
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          SizedBox(width: 5,),
          Container(
            child: Icon(Icons.mic, color: Colors.white, size: 35),
            //color: Colors.transparent,
            height: 70,
            width: 60,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.white, width: 2), shape: BoxShape.circle),
          )
        ]),
      ]),
    );
  }
}
