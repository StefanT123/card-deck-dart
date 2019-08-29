import './Card.dart';

class Deck {
    List<Card> cards = [];

    Deck() {
        List<String> ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
        List<String> suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs'];
        for (String suit in suits) {
            for (String rank in ranks) {
                this.cards.add(Card(rank, suit));
            }
        }
    }

    String toString() {
        return this.cards.toString();
    }

    void shuffle() {
        this.cards.shuffle();
    }
}
