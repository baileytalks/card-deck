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

Create a deck of 52 cards:

`deck = Deck.new`

Shuffle the deck so that no two cards are still in sequence:

`deck.shuffle`

Deal seven cards each to four players:

`deck.deal(7, 4)`

## Running tests

`rspec`

## The process
1. Create a deck of cards
