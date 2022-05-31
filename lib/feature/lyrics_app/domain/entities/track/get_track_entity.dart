import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/message_entity.dart';

class GetTrack extends Equatable {
  final Message message;

  const GetTrack({required this.message});

  factory GetTrack.fromJson(Map<String, dynamic> json) {
    return GetTrack(message: json['message']);
  }

  @override
  List<Object?> get props => [message];
}
