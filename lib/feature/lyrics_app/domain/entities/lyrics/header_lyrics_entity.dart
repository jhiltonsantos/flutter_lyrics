import 'package:equatable/equatable.dart';

class HeaderEntity extends Equatable {
  int? statusCode;
  double? executeTime;

  HeaderEntity({this.statusCode, this.executeTime});

  HeaderEntity.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    executeTime = json['execute_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['execute_time'] = executeTime;
    return data;
  }

  @override
  List<Object?> get props => [statusCode, executeTime];
}
