import 'package:json_annotation/json_annotation.dart';

part 'sign_up_user_data.g.dart';

@JsonSerializable()
class SignUpUserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  SignUpUserData(this.token, this.userName);
  factory SignUpUserData.fromJson(Map<String, dynamic> json) =>
      _$SignUpUserDataFromJson(json);
}
