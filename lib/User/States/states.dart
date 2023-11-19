import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_lab_7/Core/Model/user_model.dart';

part 'states.freezed.dart';

@freezed
abstract class UserState with _$UserState 
{
  const factory UserState.initial() = _UserInitial;
  const factory UserState.loading() = _UserLoading;
  const factory UserState.success(User user) = _UserLoadedSuccess;
  const factory UserState.error(String message) = _UserLoadedError;
}
