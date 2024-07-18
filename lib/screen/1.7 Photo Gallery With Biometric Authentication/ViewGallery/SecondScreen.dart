import 'package:flutter/material.dart';

import '../../../utils/GalleryList.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Recent'),
        elevation: 2,
        shadowColor: Colors.black,
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert_rounded),
          SizedBox(
            width: 10,
          ),
        ],
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
                    'Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  'Select',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Wrap(
              children: [
                ...List.generate(
                  secondContentList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(secondContentList[index]['img']),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  'Select',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Wrap(
              children: [
                ...List.generate(
                  secondContentList.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(secondContentList[index]['img']),
                              ),
                              borderRadius: BorderRadius.circular(15)),
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
