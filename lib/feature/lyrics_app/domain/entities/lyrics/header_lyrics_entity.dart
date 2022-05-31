import 'package:equatable/equatable.dart';

class HeaderLyrics extends Equatable {
  final int statusCode;
  final double executeTime;

  const HeaderLyrics({required this.statusCode, required this.executeTime});

  factory HeaderLyrics.fromJson(Map<String, dynamic> json) {
    return HeaderLyrics(
        statusCode: json['status_code'], executeTime: json['execute_time']);
  }

  @override
  List<Object?> get props => [statusCode, executeTime];
}
