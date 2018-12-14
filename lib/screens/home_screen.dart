import 'package:flutter/material.dart';
import 'package:flutter_firebase/app_state_container.dart';
import 'package:flutter_firebase/models/app_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  AppState appState;

  Widget get _pageToDisplay {
    return appState.isLoading ? _loadingView : _homeView;
  }

  Widget get _loadingView {
    return Center(child: CircularProgressIndicator());
  }

  Widget get _homeView {
    return Center(child: Text('appState.user.displayName'));
  }

  @override
  Widget build(BuildContext context) {
    var container = AppStateContainer.of(context);
    appState = container.state;
    Widget body = _pageToDisplay;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Suite'),
      ),
      body: body,
    );
  }
}
