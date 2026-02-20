// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelRequestBody _$ModelRequestBodyFromJson(Map<String, dynamic> json) =>
    ModelRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ModelRequestBodyToJson(ModelRequestBody instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};
