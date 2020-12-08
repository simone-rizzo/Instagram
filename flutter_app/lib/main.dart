import 'package:flutter/material.dart';
import 'package:flutter_app/my_icons_icons.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/story_open.dart';
import 'ig_profile.dart';
import 'package:flutter/material.dart';

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
  int l = profili.length;
  List<bool> cuori = List.filled(profili.length, false);
  var stories = [
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/80578196_599669644101292_66110769434984448_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=Y4ujGifzIlwAX_iA7zj&tp=1&oh=31fac96518b0dd75fcd5d5b815c0cfaf&oe=5FF8FDF7",
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/42395587_1937675946271733_6089541147804303360_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=yL2KYtmbu_gAX9mVYxU&tp=1&oh=b2f597d93d38c51ae333f753b7c860e0&oe=5FFADF5F",
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/84753783_529609674576175_1544666094445264896_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=sRpvpHRgrmcAX9rmcwE&tp=1&oh=989fceac37a7ddc8e0b6783e109c5537&oe=5FF8F0E2",
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/22220685_154207318507746_8731422797688995840_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=uKPbLkym3SIAX_IUyg3&tp=1&oh=e35b88b6db75a589d12cdd38d0dd95fe&oe=5FF85982",
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/93421025_894874597627526_2982920654690451456_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=xkfgNlDKm5MAX9rtSZz&tp=1&oh=93f37d4bc1066621f0fd8eb3321f3ba8&oe=5FF8674C",
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/59364255_469860010420236_2298185778309627904_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=HjLzRj-zjFMAX9AjvYr&tp=1&oh=f190c614091640a9c32d1d9d98cb57be&oe=5FF7450E",
    "https://scontent-xsp1-1.cdninstagram.com/v/t51.2885-19/s150x150/124268568_910866706324338_3291977969160222532_n.jpg?_nc_ht=scontent-xsp1-1.cdninstagram.com&_nc_ohc=qKB3jIOn8JMAX9K26-1&tp=1&oh=df3e5bc12e551fd65857617d3a6b3731&oe=5FFABD45",
  ];
  var stories_name = [
    "uncommo",
    "memeste",
    "flexsth",
    "snorib",
    "ellariy",
    "manusta",
    "spartan"
  ];

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
                  Text("Instagram",
                    style: TextStyle(fontFamily: 'Instagram', fontSize: 25),),
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
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: [
                                for(int i=0;i<stories.length;i++)
                                GestureDetector(
                                    onTap: ()
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ApriStoria(stories_name[i],stories[i])),
                                      );
                                    },
                                    child: story_icon(stories[i], stories_name[i]))
                              ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                          )),
                      for (int i = 0; i < profili.length; i++)
                        post(i, profili[i].username, profili[i].get_foto(0),
                            profili[i].get_foto(0))
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
                    icon: Icon(MyIcons.instagram_reels, color: Colors.black87,
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

Widget story_icon(String url, String nome)
{
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 33,
          backgroundColor: Colors.deepOrangeAccent,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(url),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(nome)
      ],
    ),
  );
}

class post extends StatefulWidget {
  int i;
  String nome;
  String url;
  String avatar_url;
  post(this.i, this.nome, this.url, this.avatar_url);

  @override
  _postState createState() => _postState();
}

class _postState extends State<post> {
  bool cuore = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profilo(widget.i)),
                  );
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.avatar_url),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(widget.nome, style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              IconButton(icon: Icon(MyIcons.more_vert),)
            ],
          ),
          Image.network(widget.url),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: ()
                    {
                        setState(() {
                          cuore=!cuore;
                        });
                    },
                    icon: Icon(!cuore?MyIcons.heart_empty:MyIcons.heart, color: Colors.black87,),),
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
                      border: InputBorder.none,
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
}


/*Widget post(BuildContext context,List<bool> cuori,int i,String nome, String url, String avatar_url) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilo(i)),
                );
              },
              child: Row(
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
                  onPressed: ()
                  {

                  },
                  icon: Icon(cuori[i]?MyIcons.heart_empty:MyIcons.heart, color: Colors.black87,),),
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
                    border: InputBorder.none,
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
}*/

