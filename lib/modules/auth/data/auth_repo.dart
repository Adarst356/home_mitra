import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/managers/network_manager.dart';
import '../../../core/network/ui_state.dart';
import '../../../data/models/user_data.dart';

/// @Created by akash on 02-03-2026.
/// Know more about author at https://akash.cloudemy.in

class AuthRepo {
  final _supabase = Supabase.instance.client;

  void login(
      String emailOrPhone,
      String password,
      void Function(UiState<UserData> state) callback, {
        required String role,
      }) async {
    callback.call(const UiState.loading());

    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }

    try {
      final response = await _supabase.auth.signInWithPassword(
        email: emailOrPhone.contains('@') ? emailOrPhone : null,
        phone: emailOrPhone.contains('@') ? null : emailOrPhone,
        password: password,
      );

      if (response.session != null) {

        /// 🔥 Fetch role from DB
        final userId = response.user!.id;

        final data = await _supabase
            .from('users')
            .select('role')
            .eq('id', userId)
            .single();

        final dbRole = data['role'];

        /// ❌ Role mismatch
        if (dbRole != role) {
          callback.call(
            UiState.error('You are not registered as $role'),
          );
          return;
        }

        /// ✅ Success
        final userData = UserData(
          accessToken: response.session?.accessToken,
          refreshToken: response.session?.refreshToken,
          expiresAt: response.session?.expiresAt.toString(),
          role: dbRole,
        );

        callback.call(UiState.success(userData));

      } else {
        callback.call(const UiState.error('Login failed'));
      }

    } on AuthException catch (e) {
      callback.call(UiState.error(e.message));
    } catch (e) {
      callback.call(UiState.error(e.toString()));
    }
  }
}
