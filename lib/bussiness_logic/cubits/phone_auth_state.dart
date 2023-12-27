part of 'phone_auth_cubit.dart';

@immutable
abstract class PhoneAuthState {}

class PhoneAuthInitial extends PhoneAuthState {}
class PhoneAuthLoading extends PhoneAuthState {}
class PhoneAuthSuccess extends PhoneAuthState {}
class PhoneAuthFail extends PhoneAuthState {}
