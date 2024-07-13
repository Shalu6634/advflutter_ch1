import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/themeprovider.dart';

class ChangeProviderTheme extends StatelessWidget {
  const ChangeProviderTheme({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeProvider changeThemeProviderTrue =
        Provider.of<ChangeProvider>(context, listen: true);
    ChangeProvider changeThemeProviderFalse =
        Provider.of<ChangeProvider>(context, listen: false);
    ChangeProvider changeThemeFalse =
        Provider.of<ChangeProvider>(context, listen: false);
    ChangeProvider changeThemeTrue =
        Provider.of<ChangeProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_rounded),
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,

              backgroundImage: AssetImage('assets/img/girl.jpg',),
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Testing User',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40,),
          ListTile(
            leading: changeThemeTrue.isDark
                ? Icon(
                    Icons.dark_mode,
                    color: Theme.of(context).colorScheme.primary,
                  )
                : Icon(Icons.light_mode,
                    color: Theme.of(context).colorScheme.primary),
            title: Text(
              '${changeThemeTrue.isDark ? 'Dark ' : 'Light'} mode',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Switch(
            onChanged: (value) {
            changeThemeFalse.changeTheme();
              },
             value: changeThemeTrue.isDark,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.grid_on_outlined,
              color: changeThemeTrue.isDark ? Colors.blue : Colors.green,
            ),
            title: Text(
              'Story',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: changeThemeTrue.isDark ? Colors.pink : Colors.blue,
            ),
            title: Text(
              'Settings and Privacy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.comment,
              color: changeThemeTrue.isDark ? Colors.yellow : Colors.orange,
            ),
            title: Text(
              'Help Center',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: changeThemeTrue.isDark ? Colors.yellowAccent : Colors.purple,
            ),
            title: Text(
              'Help Center',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
