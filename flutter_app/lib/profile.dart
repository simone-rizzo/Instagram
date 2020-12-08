import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/my_icons_icons.dart';
import 'ig_profile.dart';

class Profilo extends StatefulWidget {
  int i;
  Profilo(this.i);

  @override
  _ProfiloState createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
  bool segui = false;
 var testo_storie = ["MyAlbum","Pictures","Summer","Winter","Spring","Milan","Rome","Japan","House","Pisa","Hot","Memories"];
 Random myrand = new Random();


  @override
  Widget build(BuildContext context) {
    InstagramProfile user = profili[widget.i];
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                            Icons.arrow_back, size: 35, color: Colors.black87),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(width: 10,),
                      Text(user.username, style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(
                        Icons.notifications_none, color: Colors.black87,
                        size: 30,),),
                      IconButton(icon: Icon(
                        MyIcons.more_vert, color: Colors.black87, size: 30,),),
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
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(user.get_foto(0)),
                              ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(user.post,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                        ),),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("Post")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(user.follow,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("Follower")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(user.seguiti,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("Seguiti")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(user.username,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(user.tipologia, style: TextStyle(color: Colors.grey),),
                            Text(user.descrizione)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            segui?GestureDetector(
                              onTap: (){
                                setState(() {
                                  segui=!segui;
                                });
                              },
                              child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1.5
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),

                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("Segui già",
                                      style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),),
                                      Icon(Icons.keyboard_arrow_down)
                                    ]),
                                ),
                              ),
                            ):GestureDetector(
                              onTap: (){
                                setState(() {
                                  segui=!segui;
                                });
                              },
                              child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Colors.blue
                                ),
                                child: Center(
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Text("Segui",
                                        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                                      ]),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),

                              ),
                              child: Center(
                                child: Text("Messaggio",
                                  style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),

                              ),
                              child: Center(child:Text("E-mail",
                                style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),),
                              )),
                            Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 1.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),

                              ),
                             child: Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              storie_evidenza(testo_storie[myrand.nextInt(testo_storie.length-1)]),
                              storie_evidenza(testo_storie[myrand.nextInt(testo_storie.length-1)]),
                              storie_evidenza(testo_storie[myrand.nextInt(testo_storie.length-1)]),
                              storie_evidenza(testo_storie[myrand.nextInt(testo_storie.length-1)]),
                              storie_evidenza(testo_storie[myrand.nextInt(testo_storie.length-1)]),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(MyIcons.grid_on, color: Colors.black87, size: 35,),
                            ),
                            IconButton(
                              icon: Icon(MyIcons.instagram_reels, color: Colors.black87, size: 30,),
                            ),
                            IconButton(
                              icon: Icon(MyIcons.account_box, color: Colors.black87, size: 35,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 38, right: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            color: Colors.black87,
                            height: 2,
                            width: 100,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(user.get_foto(0),
                                width: 120, height: 120, fit: BoxFit.cover,),
                                Image.network(user.get_foto(1),
                                  width: 120, height: 120, fit: BoxFit.cover,),
                                Image.network(user.get_foto(2),
                                  width: 120, height: 120, fit: BoxFit.cover,)
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(user.get_foto(3),
                                  width: 120, height: 120, fit: BoxFit.cover,),
                                Image.network(user.get_foto(4),
                                  width: 120, height: 120, fit: BoxFit.cover,),
                                Image.network(user.get_foto(5),
                                  width: 120, height: 120, fit: BoxFit.cover,)
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(get_altre(),
                                  width: 120, height: 120, fit: BoxFit.cover,),
                                Image.network(get_altre(),
                                  width: 120, height: 120, fit: BoxFit.cover,),
                                Image.network(get_altre(),
                                  width: 120, height: 120, fit: BoxFit.cover,)
                              ],
                            ),
                          ],
                        ),
                      )
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
Widget storie_evidenza(String nome) {
  return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(get_altre()),
          ),
          SizedBox(
            height: 5,
          ),
          Text(nome)
        ],
      )
  );
}
