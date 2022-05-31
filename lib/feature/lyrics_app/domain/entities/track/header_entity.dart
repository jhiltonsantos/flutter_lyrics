import 'package:equatable/equatable.dart';

class Header extends Equatable {
  final int statusCode;
  final double executeTime;
  final int available;

  const Header(
      {required this.statusCode,
      required this.executeTime,
      required this.available});

  factory Header.fromJson(Map<String, dynamic> json) {
    return Header(
        statusCode: json['status_code'],
        executeTime: json['execute_time'],
        available: json['available']); // TODO: Verifica se esta disponivel
  }

  @override
  List<Object?> get props => [statusCode, executeTime, available];
}
