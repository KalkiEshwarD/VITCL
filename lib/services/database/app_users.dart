import 'package:isar/isar.dart';

part 'app_users.g.dart';

enum UserType {
  spectatorUser,
  playerUser,
  captainUser,
  hostUser,
}

@collection
class AppUser {
  late String userName;
  late String email;

  late String? lichessID;
  late String? phoneNumber;

  late int? blitzRating;
  late int? bulletRating;
  late int? blitzRank;
  late int? bulletRank;
  late int? overallRank;

  late String? teamName;

  @enumerated
  late UserType userType;

  Id id = Isar.autoIncrement;

  // Spectator user
  AppUser({
    required this.userName,
    required this.email,
  }) {
    userType = UserType.spectatorUser;
  }

  // Player user
  AppUser.playerUser({
    required this.userName,
    required this.email,
    required this.lichessID,
    required this.phoneNumber,
    userType = UserType.playerUser,
  });

  // Captain user
  AppUser.captainUser({
    required this.userName,
    required this.email,
    required this.lichessID,
    required this.phoneNumber,
    required this.teamName,
    userType = UserType.captainUser,
  });

  // Host user
  AppUser.hostUser({
    required this.userName,
    required this.email,
    userType = UserType.hostUser,
  });
}
