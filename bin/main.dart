import '../models/Card.dart';
import '../models/Deck.dart';

void main() {
    Deck deck = new Deck();
    print(deck);
    deck.removeCard('Ace', 'Hearts');
    print(deck);
}
