abstract class NoSQLDatabaseProvider {
  Future<void> initializeDatabase();

  Future<void> userSignUp({
    required String email,
    bool isVerified = false,
  });
}
