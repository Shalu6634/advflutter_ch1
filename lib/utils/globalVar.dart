
import 'package:flutter/cupertino.dart';

import '../screen/lec- 1.5 data solving/modal/modal.dart';

bool isDark = false;
int number = 0;

var txtAuthor = TextEditingController();
var txtQuote = TextEditingController();
QuotesModal quotesModal = QuotesModal();

GlobalKey<FormState> formKey = GlobalKey();