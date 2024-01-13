import 'package:vitcl/services/auth/auth_user.dart';

abstract class AuthProvider {
  // initialize
  Future<void> initializeApp();
  // sign up
  Future<AuthUser> userSignUp({
    required String email,
    required String password,
  });
  // sign in
  Future<AuthUser> userSignIn(
      {required String email, required String password});
  // sign out
  Future<void> userSignOut();
  // delete user
  Future<void> deleteUser();
  // retreive current user
  AuthUser? get currentUser;
  // update profile
  Future<void> updateUserProfile();

  Future<void> userChangePassword();
}
