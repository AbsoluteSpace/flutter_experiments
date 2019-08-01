import 'package:scoped_model/scoped_model.dart';

class CardModel extends Model {
  List<String> _cards = List<String>();

  Future<void> load() async {
    for (int i = 0; i < 5; i++) {
      _cards.add("Card #" + i.toString());
    }
    notifyListeners();
  }

  List<String> get cards {
    return _cards;
  }

  Future reject(String card) async {
    _cards.remove(card);
    notifyListeners();
  }

  Future approve(String card) async {
    _cards.remove(card);
    notifyListeners();
  }
}
