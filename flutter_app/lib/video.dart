import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';


class VideoApp extends StatefulWidget {
  final String url;
  final Function fun;
  VideoApp(this.url, this.fun);


  @override
  _VideoAppState createState() {
    return new _VideoAppState(url, fun);
  }
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;
  Function fun;
  String url;

  _VideoAppState(String url,Function fun){
    this.fun=fun;
    this.url=url;
    fun(update_url);
  }

  void update_url(String url)
  {
    setState(() {
      _controller = VideoPlayerController.network(
          url)
        ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
          setState(() {
            _controller.play();
          });
        });
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: _controller.value.initialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: GestureDetector(
                onTap: (){
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                },
                child: VideoPlayer(_controller)),
          )
              : Container(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}