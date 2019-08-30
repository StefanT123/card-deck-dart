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

    List cardsWithSuit(String suit) {
        return this.cards.where((card) => card.suit == suit).toList();
    }

    List deal(int numOfCards) {
        List hand = this.cards.sublist(0, numOfCards);
        this.cards = this.cards.sublist(numOfCards);

        return hand;
    }

    void removeCard(String rank, String suit) {
        this.cards.removeWhere((card) => card.rank == rank && card.suit == suit);
    }
}
