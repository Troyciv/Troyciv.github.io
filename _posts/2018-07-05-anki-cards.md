---
title: Not all cards are equal - The Anki review pipeline
category: Anki
#published: false
---

In my [last post]({% post_url 2018-07-03-anki-fundamentals %}) I've covered how Anki automatically
creates cards for you. Now it's time to review your cards.

Anki treats cards differently depending on if and how often you've already reviewed them.
I'll explain the differences between new cards, review cards, young and mature cards.

In general, Anki knows 3 different states of a card:

* new cards
* learn cards
* mature cards
* suspended cards

When a card gets created Anki sees it as a **new card**.

You can search for new cards in the card browser with `is:new`.

Once you've reviewed a new card the first time it becomes a **review card** aka **young card**

When the interval of a review card passes 21 days, Anki sees it as **mature card**.

#### A few words on marked and suspended cards

Marking a cards does nothing more than adding the tag `marked` to the respectable note.
This has one big drawback.
Since Anki marks a whole note with all cards associated with it, you cannot search for a specific
marked card.
This is especially annoying when you spotted an error on your card and want to use the marking
feature during review in order to find that card later.
Luckily this feature will get an overhaul in the upcoming 2.1 release of Anki.
