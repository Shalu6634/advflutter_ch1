import 'package:advflutter_ch1/screen/lec-%201.5/modal/modal.dart';
import 'package:flutter/cupertino.dart';

bool isDark = false;
int number = 0;

var txtAuthor = TextEditingController();
var txtQuote = TextEditingController();
QuotesModal quotesModal = QuotesModal();

GlobalKey<FormState> formKey = GlobalKey();