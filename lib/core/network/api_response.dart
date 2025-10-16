import 'dart:convert';

import '../../core/constants/data_key.dart';

class ApiResponse {
  final int statusCode;
  final bool isSuccessful;
  final String? message;
  final Object? data;
  final String? timestamp;
  ApiResponse({
    required this.statusCode,
    required this.message,
    required this.isSuccessful,
    this.data,
    this.timestamp,
  });

  ApiResponse copyWith({
    int? statusCode,
    String? message,
    Object? data,
    String? timestamp,
  }) {
    return ApiResponse(
      statusCode: statusCode ?? this.statusCode,
      isSuccessful: ((statusCode ?? 0) == 200 || (statusCode ?? 0) == 201),
      message: message ?? this.message,
      data: data ?? this.data,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  factory ApiResponse.fromMap(
    Map<String, dynamic> map, {
    String? dataKey = DataKey.data,
  }) {
    int statusCode = map[DataKey.statusCode] as int;
    return ApiResponse(
      statusCode: statusCode,
      isSuccessful: (statusCode == 200 || statusCode == 201),
      message: map[DataKey.message] as String?,
      data: map[dataKey],
      timestamp: map[DataKey.timestamp] as String?,
    );
  }

  factory ApiResponse.fromJson(String source) =>
      ApiResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApiResponse(statusCode: $statusCode, message: $message, data: $data, timestamp: $timestamp)';
  }
}
