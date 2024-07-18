import 'package:advflutter_ch1/utils/GalleryList.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../../../utils/globalVar.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
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
                  width: 20,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        PopupMenuButton<SampleItem>(
                          initialValue: selectedItem,
                          onSelected: (SampleItem item){
                            setState(() {
                              selectedItem = item;
                            });
                          },
                          itemBuilder: (context) => <PopupMenuEntry<SampleItem>>[
                            PopupMenuItem<SampleItem>(
                             child: Text('hide'),
                              value: SampleItem.hideFile,
                            ),
                            PopupMenuItem<SampleItem>(
                              child: Text('file'),
                              value: SampleItem.hideFolder,
                            ),
                            PopupMenuItem<SampleItem>(
                              child: Text('file'),
                              value: SampleItem.hideEyes,
                            ),
                          ]
                        );
                      });
                      // Navigator.of(context).pushNamed('/second');
                    },
                    child: Icon(Icons.more_vert_rounded),
                ),

              ],
            ),
            Wrap(
              children: [
                ...List.generate(
                  contentList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.4),
                    child: Column(
                      children: [
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
