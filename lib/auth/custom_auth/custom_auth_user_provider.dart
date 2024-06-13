import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class TransportAIAuthUser {
  TransportAIAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TransportAIAuthUser> transportAIAuthUserSubject =
    BehaviorSubject.seeded(TransportAIAuthUser(loggedIn: false));
Stream<TransportAIAuthUser> transportAIAuthUserStream() =>
    transportAIAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
