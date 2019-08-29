import '../models/Card.dart';
import '../models/Deck.dart';

void main() {
    Deck deck = new Deck();
    deck.shuffle();
    print(deck);
}
