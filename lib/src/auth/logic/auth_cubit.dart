import 'package:bud/core/utils/helper_methods.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_constants.dart';
import '../../../core/utils/toast_states/enums.dart';
import '../data/models/login_params.dart';
import '../data/repo/auth_repo.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(AuthInitial());

  HelperMethods helperMethods =HelperMethods();

  void login(String phone, String password) async {
    LoginParamsData params = LoginParamsData(phone: phone, password: password);
    emit(state.copyWith(loginState: RequestState.loading,));
    try {
      final response = await _authRepo.login(params);
      response.when(success: (response){
        helperMethods.saveToken(response.token??'');
        emit(state.copyWith(loginState: RequestState.success,));
      },
          failure: (error){
            showToast(text: error.apiErrorModel.message.toString()??'', );
            emit(state.copyWith(loginState: RequestState.error,));
          });
    } catch (e) {
      emit(state.copyWith(loginState: RequestState.error,));
    }
  }
}
