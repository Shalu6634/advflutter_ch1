
class QuotesModal {
  String? author;
  String? quote;
  List<QuotesModal> QuotesList = [];

  QuotesModal({this.author, this.quote});

  factory QuotesModal.fromQuotesModal(Map m1) {
    return QuotesModal(author: m1['author'], quote: m1['quote']);
  }

  QuotesModal.toList({required List l1}) {
    for (int i = 0; i < l1.length; i++) {
      QuotesList.add(QuotesModal.fromQuotesModal(l1[i]));
    }
  }
}
