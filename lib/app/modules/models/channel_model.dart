// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:universo_def/app/modules/models/video_model.dart';

class Channel {
  final String?  id;
  final String?  title;
  final String?  profilePictureUrl;
  final String?  subscriberCount;
  final String?  videoCount;
  final String?  uploadPlaylistId;
  List<Video> ?videos;
  Channel({
    this.id,
    this.title,
    this.profilePictureUrl,
    this.subscriberCount,
    this.videoCount,
    this.uploadPlaylistId,
    this.videos,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
      subscriberCount: map['statistics']['subscriberCount'],
      videoCount: map['statistics']['videoCount'],
      uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
      // videos: 
    );
  }
}
