// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Video {
  final String? id;
  final String? title;
  final String? thumbnailUrl;
  final String? channelTitle;
  
  Video({
  this.id,
  this.title,
  this.thumbnailUrl,
  this.channelTitle,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoUrl'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle']
    );
  }
}
