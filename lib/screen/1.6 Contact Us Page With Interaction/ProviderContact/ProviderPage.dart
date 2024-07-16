import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactHomeProvider extends ChangeNotifier
{
  void launcherPhone()
  {
    Uri uri = Uri.parse('tel:+91 6352413467');
    launchUrl(uri);
  }
  void launcherEmail()
  {
    Uri uri = Uri.parse('mailto:sharmashalu3148@gmail.com');
    launchUrl(uri);
  }
  void launcherWebsite()
  {
    Uri uri = Uri.parse('https://api.flutter.dev/');
    launchUrl(uri);
  }
  void launcherSocial()
  {
    Uri uri = Uri.parse('https://github.com/');
    launchUrl(uri);
  }
  void launcherSocial1()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/feed/');
    launchUrl(uri);
  }

}