import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hideden_drawer_flutter/DrawerScreen.dart';
import 'package:hideden_drawer_flutter/navigation_bloc.dart';
import 'package:hideden_drawer_flutter/services/usermanagement.dart';


void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            DrawerScreen(),
            BlocBuilder<NavigationBloc, NavigationState>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
          ],
        ),
      ),
    );
  }
}
