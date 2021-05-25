//adding data

class CardModel {
  var user;
  var credit;
  var date;

  CardModel(this.user, this.credit, this.date);
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
        item['user'],
        item['credit'],
        item['date'],
      ),
    )
    .toList();

var cardData = [
  {"user": "Invoice no #12", "credit": "Rs.3000", "date": "2020/3/30"},
  {"user": "Invoice no #24", "credit": "Rs. 6305", "date": "2020/2/12"},
  {"user": "Invoice no #39", "credit": "Rs. 6305", "date": "2020/3/30"},
  {"user": "Invoice no #249", "credit": "Rs. 6004", "date": "2020/2/11"},
  {"user": "Invoice no #1940", "credit": "Rs. 1030", "date": "2020/1/23"},
  {"user": "Invoice no #02", "credit": "Rs. 905", "date": "2020/1/12"},
];
