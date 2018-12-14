import 'package:firebase_auth/firebase_auth.dart';

class AppState {
  bool isLoading;
  FirebaseUser user;

  AppState({this.isLoading = false, this.user});

  // A constructor for when the app is loading.
  factory AppState.loading() => AppState(isLoading: true);

  @override
  String toString() {
    return 'AppState{isLoading: $isLoading, user: ${user?.displayName ?? 'null'}}';
  }
}
