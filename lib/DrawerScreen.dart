import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hideden_drawer_flutter/configuration.dart';
import 'package:hideden_drawer_flutter/navigation_bloc.dart';
import 'menu_item.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 40.0, bottom: 60.0, left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Abhi Sondagar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Divider(
            height: 30.0,
            thickness: 0.5,
            color: Colors.white.withOpacity(0.3),
            indent: 30,
            endIndent: 200,
          ),
          Column(
            children: <Widget>[
              MenuItem(
                icon: Icons.home,
                title: 'home',
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.HomePageClickEvent);
                },
              ),
              MenuItem(
                icon: Icons.person,
                title: 'My Account',
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.MyAccountPageClickEvent);
                },
              ),
              MenuItem(
                icon: Icons.shopping_basket,
                title: 'My Order',
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.MyOrdersPageClickEvent);
                },
              ),
              MenuItem(
                icon: Icons.card_giftcard,
                title: 'Wishlist',
              ),
            
              
            ],

          ),
          Divider(
            height: 30.0,
            thickness: 0.5,
            color: Colors.white.withOpacity(0.3),
            indent: 30,
            endIndent:200,
          ),

          // Column(
          //   children: drawerItems
          //       .map((element) => Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Row(
          //               children: <Widget>[
          //                 Icon(
          //                   element['icon'],
          //                   color: Colors.white,
          //                   size: 30.0,
          //                 ),
          //                 SizedBox(
          //                   width: 10.0,
          //                 ),
          //                 Text(
          //                   element['title'],

          //                   style: TextStyle(
          //                       color: Colors.white,
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 17.0),
          //                 ),
          //               ],
          //             ),
          //           ))
          //       .toList(),
          // ),
          Row(
            children: <Widget>[
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Settings',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 2.0,
                height: 20.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Log out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
