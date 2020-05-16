import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideosListItem extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;

  VideosListItem({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);

  @override
  _VideosListItemState createState() => _VideosListItemState();
}

class _VideosListItemState extends State<VideosListItem> {

  ChewieController _chewieController;
  @override
  void initState(){
    super.initState();

    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      looping: widget.looping,

      errorBuilder: (context, errorMessage){
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },

    );
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  void dispose(){
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}