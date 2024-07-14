

import 'package:advflutter_ch1/utils/globalVar.dart';
import 'package:flutter/material.dart';

import '../../../utils/globalList.dart';

class QuoteProvider extends ChangeNotifier
{
  String? author;
  String? quote;

  void addQuoteData()
  {
    author = txtAuthor.text;
    quote= txtQuote.text;
    notifyListeners();
  }

  void addQuoteList()
  {
    quoteList.insert(0, {'author':author,'quote':quote, });
    notifyListeners();
  }

  void removeData(int index)
  {
    quoteList.removeAt(index);
    notifyListeners();
  }

}