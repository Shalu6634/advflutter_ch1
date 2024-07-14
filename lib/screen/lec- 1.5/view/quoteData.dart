import 'package:advflutter_ch1/screen/lec-%201.5/modal/modal.dart';
import 'package:advflutter_ch1/screen/lec-%201.5/provider/provider.dart';
import 'package:advflutter_ch1/utils/globalList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/globalVar.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuoteProvider quoteProviderFalse =
        Provider.of<QuoteProvider>(context, listen: false);
    QuoteProvider quoteProviderTrue =
        Provider.of<QuoteProvider>(context, listen: true);

    quotesModal = QuotesModal.toList(l1: quoteList);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: quotesModal.QuotesList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(quotesModal.QuotesList[index].quote!),
            subtitle: Text(quotesModal.QuotesList[index].author!),
            trailing: GestureDetector(onTap:(){
              quoteProviderFalse.removeData(index);
            },child: Icon(Icons.delete)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Form(
              child: AlertDialog(
                title: SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: txtAuthor,
                    decoration: InputDecoration(
                        hintText: 'Author', border: OutlineInputBorder()),
                  ),
                ),
                content: SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: txtQuote,
                    decoration: InputDecoration(
                        hintText: 'Quote', border: OutlineInputBorder()),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      quoteProviderFalse.addQuoteData();
                      quoteProviderFalse.addQuoteList();

                      Navigator.of(context).pop();
                    },
                    child: Text('Save'),
                  ),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text('Back'))
                ],
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
