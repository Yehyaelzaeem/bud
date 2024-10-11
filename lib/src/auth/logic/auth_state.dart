part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final RequestState loginState;
  final RequestState registerState;

  const AuthState({
    this.loginState = RequestState.initial,
    this.registerState = RequestState.initial,
  });


  AuthState copyWith({RequestState? loginState,RequestState? registerState}) {
    return AuthState(
      loginState: loginState ?? this.loginState,
      registerState: registerState ?? this.registerState,
    );
  }

  @override
  List<Object?> get props => [loginState, registerState];

}

final class AuthInitial extends AuthState {}
