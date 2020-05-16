import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:appcat/components/video.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.yellow.shade700,
        title: Text('ทบทวนเนื้อหาฟิสิกส์',style: TextStyle(fontFamily:'Omyim',fontSize: 40)),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (null)),
        ],
      ),
      body: ListView(
        children: <Widget>[
          // VideosListItem(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'videos/fx.mp4',
          //   ),
          //   looping: false,
          // ),
          // VideosListItem(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'videos/p1.mp4',
          //   ),
          //   looping: false,
          // ),
          Text('1.แรงเสียดทาน Part:1',style: TextStyle(fontFamily:'Omyim',fontSize: 30)),
          VideosListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://firebasestorage.googleapis.com/v0/b/emmashop-40a28.appspot.com/o/%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B8%A2%E0%B8%94%E0%B8%97%E0%B8%B2%E0%B8%99%20p.1.mp4?alt=media&token=d3287d08-3e6f-481b-803c-873924cd5b9b',
            ),
            looping: false,
          ),
          Divider(),
          Text('2.แรงเสียดทาน Part:2',style: TextStyle(fontFamily:'Omyim',fontSize: 30)),
          VideosListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://firebasestorage.googleapis.com/v0/b/emmashop-40a28.appspot.com/o/%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B8%A2%E0%B8%94%E0%B8%97%E0%B8%B2%E0%B8%99%20p.2.mp4?alt=media&token=e04c8c64-4eb4-4702-b28e-01af0a865161',
            ),
            looping: false,
          ),
          Divider(),
        ]
      ),
    );
  }
}
