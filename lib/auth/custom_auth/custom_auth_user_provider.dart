import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class TestAuthUser {
  TestAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TestAuthUser> testAuthUserSubject =
    BehaviorSubject.seeded(TestAuthUser(loggedIn: false));
Stream<TestAuthUser> testAuthUserStream() =>
    testAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
