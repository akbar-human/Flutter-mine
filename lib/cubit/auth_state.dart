part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// inisialisasi
class AuthInitial extends AuthState {}

// dijalankan ketika loading
class AuthLoading extends AuthState {}

// dijalankan ketika Berhasil
class AuthSuccess extends AuthState {
  final UserModel userModel;

  AuthSuccess(this.userModel);

  @override
  List<Object> get props => [userModel];
}

class AuthFailed extends AuthState {
  final String error;

  AuthFailed(this.error);

  @override
  List<Object> get props => [error];
}
