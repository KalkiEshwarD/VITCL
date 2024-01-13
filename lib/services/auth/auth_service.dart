import 'package:vitcl/services/auth/auth_provider.dart';
import 'package:vitcl/services/auth/auth_user.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;
  const AuthService(this.provider);

  @override
  Future<void> initializeApp() async => provider.initializeApp();

  @override
  Future<AuthUser> userSignIn({
    required String email,
    required String password,
  }) async {
    return await provider.userSignIn(email: email, password: password);
  }

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<void> deleteUser() => provider.deleteUser();

  @override
  Future<void> updateUserProfile() => provider.updateUserProfile();

  @override
  Future<void> userChangePassword() => provider.userChangePassword();

  @override
  Future<void> userSignOut() => provider.userSignOut();

  @override
  Future<AuthUser> userSignUp({
    required String email,
    required String password,
  }) =>
      provider.userSignUp(
        email: email,
        password: password,
      );
}
