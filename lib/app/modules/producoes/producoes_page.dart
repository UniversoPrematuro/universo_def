// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/producoes/producoes_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_def/app/modules/producoes/video_player.dart';
import 'package:universo_def/app/modules/services/yt_api_service.dart';

import '../models/channel_model.dart';
import '../models/video_model.dart';

class ProducoesPage extends StatefulWidget {
  final String title;
  const ProducoesPage({Key? key, this.title = 'Produções',}) : super(key: key);
  @override
  ProducoesPageState createState() => ProducoesPageState();
}
class ProducoesPageState extends State<ProducoesPage> {
  final ProducoesStore store = Modular.get();
  Channel? _channel;
  bool _isLoading = false;
  

  @override
  void initState() {
    _initChannel();
    // Channel _channel;
    super.initState();
  }

  _initChannel() async {
    Channel channel = await APIService.instance.fetchChannel(channelId: 'UCI8fBFZtG6rwQfoQB-NfPuA');
    setState(() {
      _channel = channel;
    });
  }

  _buildVideo(Video video) {
    // String id = video.id!;
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (_) => VideoScreen(id: "https://${video.id}"),
      )),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(10),
        height: 140,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 6.0,
          )]
        ),
        child: Row(
          children: [
            Image(
              image: NetworkImage(video.thumbnailUrl!),
              width: 150,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                video.title!,
                style: const TextStyle(
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildProfileInfo() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding:const  EdgeInsets.all(20),
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 1),
          blurRadius: 6.0,
        )]
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            backgroundImage: NetworkImage(_channel!.profilePictureUrl!),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _channel!.title!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,

                ),
                Text(
                  '${_channel!.subscriberCount} subscribers'
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance.fetchVideosFromPlaylist(playlistId: _channel!.uploadPlaylistId);
    List<Video> allVideos = _channel!.videos!..addAll(moreVideos);
    setState(() {
      _channel!.videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produções YouTube"),
      ),
      body: _channel != null ? 
         NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollDetails) {
            if (!_isLoading && _channel!.videos!.length != int.parse(_channel!.videoCount!) && scrollDetails.metrics.pixels == scrollDetails.metrics.maxScrollExtent) {
              _loadMoreVideos();
            }
            return false;
          },
           child: ListView.builder(
            itemCount: 1 + _channel!.videos!.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0){
                return _buildProfileInfo();
              }
              Video video = _channel!.videos![index - 1];
              return _buildVideo(video);

            }
                 ),
         )
      : Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
        ),
      )
    );
  }
}