// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_lyrics/core/interceptors/data_interceptor.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/http.dart';

final http.Client client = InterceptedClient.build(
    interceptors: [DataInterceptor()],
    requestTimeout: const Duration(seconds: 5));
