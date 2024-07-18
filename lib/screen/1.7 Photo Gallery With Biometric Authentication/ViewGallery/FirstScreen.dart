import 'package:advflutter_ch1/screen/1.7%20Photo%20Gallery%20With%20Biometric%20Authentication/ViewGallery/SecondScreen.dart';
import 'package:advflutter_ch1/utils/GalleryList.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import '../../../utils/globalVar.dart';
import '../provider/localAuth_provider.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Gallery'),
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Albums',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                PopupMenuButton<String>(
                  onSelected: (String value) async {
                    if (value == 'Hide Folder') {
                      if (await Provider.of<AuthProvider>(context,
                          listen: false)
                          .checkFingerprint()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondPage(),
                          ),
                        );
                      }
                    }
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Edit',
                      child: Text('Edit'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Setting',
                      child: Text('Setting'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Hide Folder',
                      child: Text('Hide Folder'),
                    ),
                  ],
                  child: const Icon(Icons.more_vert),
                )
              ],
            ),

            Wrap(
              children: [
                ...List.generate(
                  contentList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.4),
                    child: Column( 
                      children:[
                        Container(
                          height: 104,
                          width: 103,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(contentList[index]['img']),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Text(contentList[index]['name']),
                        Text(
                          contentList[index]['count'].toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
