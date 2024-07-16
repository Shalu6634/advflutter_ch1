import 'package:advflutter_ch1/screen/1.6%20Contact%20Us%20Page%20With%20Interaction/ProviderContact/ProviderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactHomeProvider contactHomeProvider = Provider.of<ContactHomeProvider>(context , listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
                size: 25,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Contact Us',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height * 0.085,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.098, color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(CupertinoIcons.device_phone_portrait,color: Colors.blue,size: 30,),
                GestureDetector(onTap: (){
                contactHomeProvider.launcherPhone();
                },child: Text('+91 6352413467',style: TextStyle(fontSize: 16),)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: height * 0.085,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.098, color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.email_outlined,color: Colors.blue,size: 30,),
                GestureDetector(onTap: (){
                  contactHomeProvider.launcherEmail();
                },child: Text('shalu@gmail.com',style: TextStyle(fontSize: 15),)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: height * 0.5,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.40, color: Colors.grey)),
            child: Column(

              children: [
                Container(
                  height: height * 0.085,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(width: 0, color: Colors.grey)),
                  child: Center(child: Text('Social Media',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 21),),),
                ),
                Container(
                  height: height * 0.095,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.090, color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.web,color: Colors.blue,size: 30,),
                      GestureDetector(onTap: (){
                        contactHomeProvider.launcherWebsite();
                      },child: Text('Flutter')),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.098,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.090, color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/img/git.png',height: 30,),
                      GestureDetector(onTap: (){
                        contactHomeProvider.launcherSocial();
                      },child: Text('Github')),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.090, color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/img/link.png',height: 40,),
                      GestureDetector(onTap: (){
                      contactHomeProvider.launcherSocial1();
                      },child: Text('Linkedin')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
