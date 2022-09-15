// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class Media {

  int? id;
  String? type;
  String? url;
  String? user;
  String? thumb;
  String? date;
  Media({
    this.id,
    this.type,
    this.url,
    this.user,
    this.thumb,
    this.date,
  });

  


  Media copyWith({
    int? id,
    String? type,
    String? url,
    String? user,
    String? thumb,
    String? date,
  }) {
    return Media(
      id: id ?? this.id,
      type: type ?? this.type,
      url: url ?? this.url,
      user: user ?? this.user,
      thumb: thumb ?? this.thumb,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'url': url,
      'user': user,
      'thumb': thumb,
      'date': date,
    };
  }

  factory Media.fromMap(Map<String, dynamic> map) {
    return Media(
      id: map['id'] != null ? map['id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      user: map['user'] != null ? map['user'] as String : null,
      thumb: map['thumb'] != null ? map['thumb'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Media.fromJson(String source) => Media.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Media(id: $id, type: $type, url: $url, user: $user, thumb: $thumb, date: $date)';
  }

  @override
  bool operator ==(covariant Media other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.type == type &&
      other.url == url &&
      other.user == user &&
      other.thumb == thumb &&
      other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      url.hashCode ^
      user.hashCode ^
      thumb.hashCode ^
      date.hashCode;
  }
}
