import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final SharedPreferenceService sharedPrefsService;

  AuthBloc({required this.authRepository, required this.sharedPrefsService})
      : super(const AuthUnInitialized()) {
    () async {
      await authRepository.getAuthenticatedUser();
      var authToken = await authRepository.getAuthToken();
      bool isfirstTime = await sharedPrefsService.isFirstRun();
      await Future.delayed(const Duration(seconds: 1, milliseconds: 500));
      emit(AuthInitialized(token: authToken, isfirstTime: isfirstTime));
    }();

    on<AuthEventSignedIn>(
      ((event, emit) async {
        sharedPrefsService.setFirstRun(false);
        emit(AuthAuthenticated(event.user, event.token));
      }),
    );
    on<AuthEventSignOut>(((event, emit) async {
      await authRepository.logout();
      emit(const AuthUnauthenticated());
    }));
  }
}
