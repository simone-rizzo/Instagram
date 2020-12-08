import 'package:flutter/material.dart';
import 'package:flutter_app/my_icons_icons.dart';
import 'package:flutter_app/video.dart';

class ApriStoria extends StatefulWidget {
  String name, logo;
  ApriStoria(this.name, this.logo);

  @override
  _ApriStoriaState createState() => _ApriStoriaState();
}

class _ApriStoriaState extends State<ApriStoria> {
  String videopath = "http://192.168.1.215/videos/video";
  int num = 8;
  int attuale = 1;
  Function update;
  void copia(Function child_update)
  {
    update=child_update;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
                color: Colors.black87,
                padding: EdgeInsets.only(top: 40, left: 5, right: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i = 0; i < num; i++)
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 3),
                              color: (i + 1) <= attuale ? Colors.white : Colors
                                  .grey,
                              height: 3,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(widget.logo),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(widget.name, style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15),),
                              SizedBox(
                                width: 10,
                              ),
                              Text("3h", style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 13),)
                            ],
                          ),
                        ),
                        Icon(MyIcons.more_vert, color: Colors.white,)
                      ],
                    ),
                    Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                  child: VideoApp(
                                      videopath + attuale.toString() + ".mp4",
                                      copia)
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (attuale > 1) {
                                            attuale = attuale -1;
                                            update(videopath + attuale.toString() +
                                                ".mp4");
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: const Color(0x00b72393),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      color: const Color(0x00b22293),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          if (attuale < num) {
                                            attuale = attuale + 1;
                                            update(videopath + attuale.toString() +
                                                ".mp4");
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: const Color(0x00b74093),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 30, left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: new Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.white,
                                  primaryColorDark: Colors.white
                              ),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24)),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 0.0),
                                    ),
                                    hintStyle: TextStyle(color: Colors.white),
                                    hintText: 'Invia un messaggio'
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(MyIcons.send, color: Colors.white,)
                        ],
                      ),
                    )
                  ],
                )
            )
        ));
  }
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
    color: Colors.white
  );
}