import 'package:flutter/material.dart';
import 'appcolors.dart';
import 'inheritedwidget.dart';
import 'setstate.dart';

import 'provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: AppColors.blue),
              child: Text(
                'Flutter State Management',
                style: TextStyle(color: AppColors.white, fontSize: 24),
              )),
          ListTile(
            leading: Icon(Icons.arrow_forward),
            title: Text('SetState'),
            onTap: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SetStatePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward),
            title: Text('Inherited Widget'),
            onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => InheritedWidgetPage()));
            },
          ),
          ListTile(leading: Icon(Icons.arrow_forward), title: Text('Provider'),
          onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ProviderPage()));
            },),
            ListTile(leading: Icon(Icons.arrow_forward), title: Text('Bloc Pattern'),
          onTap:null,)
        ],
      ),
    );
  }
}
