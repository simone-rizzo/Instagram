import 'package:flutter/material.dart';
import 'package:flutter_app/my_icons_icons.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
      color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Instagram", style: TextStyle(fontFamily: 'Instagram', fontSize: 25),),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(MyIcons.add,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        icon: Icon(MyIcons.heart_empty,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                          icon: Icon(MyIcons.send,
                            color: Colors.black87,)
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      post("mario","https://simone-rizzo.github.io/fairwear_images/16rfirenze0.jpg","https://simone-rizzo.github.io/fairwear_images/16rfirenze1.jpg"),
                      post("filippo","https://simone-rizzo.github.io/fairwear_images/16rfirenze1.jpg","https://simone-rizzo.github.io/fairwear_images/16rfirenze1.jpg"),
                      post("giovanni","https://simone-rizzo.github.io/fairwear_images/16rfirenze2.jpg","https://simone-rizzo.github.io/fairwear_images/16rfirenze1.jpg"),
                      post("luigi","https://simone-rizzo.github.io/fairwear_images/16rfirenze3.jpg","https://simone-rizzo.github.io/fairwear_images/16rfirenze1.jpg"),
                      post("gianfrancesco","https://simone-rizzo.github.io/fairwear_images/16rfirenze4.jpg","https://simone-rizzo.github.io/fairwear_images/16rfirenze1.jpg")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(MyIcons.home, color: Colors.black87,
                    size: 30,
                    ),
                  ),
                  IconButton(
                    icon: Icon(MyIcons.search, color: Colors.black87,
                      size: 30,),
                  ),
                  IconButton(
                    icon: Icon(MyIcons.youtube_play, color: Colors.black87,
                      size: 30,),
                  ),
                  IconButton(
                    icon: Icon(MyIcons.shopping_bag, color: Colors.black87,
                      size: 30,),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://yt3.ggpht.com/a-/AOh14GjN4zln0_csH_6MQPDPw9zymWh-fIBWjE0u6w=s68-c-k-c0x00ffffff-no-rj-mo"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget post(String nome, String url, String avatar_url) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(avatar_url),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(nome, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            IconButton(icon: Icon(MyIcons.more_vert),)
          ],
        ),
        Image.network(url),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(MyIcons.heart_empty, color: Colors.black87,),),
                IconButton(
                  icon: Icon(MyIcons.comment, color: Colors.black87,),),
                IconButton(icon: Icon(MyIcons.send, color: Colors.black87,),)
              ],
            ),
            IconButton(icon: Icon(MyIcons.saved, color: Colors.black87,),)
          ],
        ),
        Row(
          children: [
            Text("Piace a "),
            Text("fit.prateek", style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" e "),
            Text(
              "altre persone", style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Text("marietto", style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" questa sì che è una bellissima foto")
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Text("Respect"),
            Text("...altro", style: TextStyle(color: Colors.grey)),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  "https://yt3.ggpht.com/a-/AOh14GjN4zln0_csH_6MQPDPw9zymWh-fIBWjE0u6w=s68-c-k-c0x00ffffff-no-rj-mo"),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Aggiungi un commento...'
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Text("4 minuti fa", style: TextStyle(fontSize: 10),),
            Text(" - Visualizza traduzione",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
          ],
        )
      ],
    ),
  );
}

