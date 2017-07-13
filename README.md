# Playing Cards 🃏

You have a deck of 52 cards, comprised of 4 suits (hearts, clubs, spades and diamonds) each with 13 values (Ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen and king).

There are four players waiting to play around a table.

The deck arrives in perfect sequence (so, ace of hearts is at the bottom, two of hearts is next, etc. all the way up to the king of diamonds on the top).

This is a simple command line program that takes the deck (above) and then:
* Shuffles the cards (so that no two cards are still in sequence)
* Deals the cards (seven to each player, one to each player, then a second, and so on)

## Using the program

Install the program and dependencies:

`git clone git@github.com:baileytalks/card-deck.git`

`bundle`

Run the program:

`irb`

`2.4.1 :001 > require './lib/deck'`

Create a deck of 52 cards in perfect sequence:

`deck = Deck.new`

Shuffle the deck so that no two cards are still in sequence:

`deck.shuffle`

Deal seven cards each to four players:

`deck.deal(7, 4)`

## Running tests

`rspec`

## Writing the program 👩🏻‍💻
1. I created a deck of cards (an array of card objects which each contain a rank and suit)
2. The deck is originally ordered the deck of cards in perfect sequence, as specified above
3. I wrote a shuffle method that shuffles the cards and checks that no two cards are still in sequence
4. I created a deal method that takes the number of cards they want to deal to each player, and the number of players
5. The deal method creates the appropriate number of users and then deals cards from the deck one by one
6. The deck class was created last, as a controller for the above

I ended up with six separate classes: Deck (a controller), CardDeck, Card, Shuffle, Deal and Player.
