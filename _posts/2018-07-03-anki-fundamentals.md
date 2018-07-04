---
layout: post
title: The fundamental principle of Anki card creation
date: 2018-07-04
categories: Anki
---

During the last weeks I've been a little more active on the [Anki subreddit](https://www.reddit.com/r/anki) than usual.
One thing I noticed was that some new users have difficulties to grasp how Anki actually creates cards.
While I do think that the [official Anki docs](https://apps.ankiweb.net/docs/manual.html) are excellently written, I also understand that a technical documentation can be a little bit overwhelming at times.
This is why I've written this short article in order to clear up some of the confusion.


<!-- ![Anki card creation flowchart]({{"/assets/img/anki-flowchart-3.svg"}}) -->
<center>
<!-- <img src="/assets/img/anki-flowchart-3.svg" onerror="this.src='/assets/img/anki-flowchart-1.png'"> -->
<img src="/assets/img/anki-flowchart-4.svg" onerror="this.src='/assets/img/anki-flowchart-4.png'">
</center>
<br/>
The graphic above shows the whole process of card creation.
In Anki, you don't create cards yourself but Anki creates them automatically based on the **notes** and the **templates** you give it.

Let's go through it step by step.

A **note** is a collection of **fields**.
Simply put, this is where you put all the relevant information you want to create card(s) from.
A Note can consist of an arbitrary number of **fields**.

Each **field** can contain text or links to images, videos other files (e.g. audio files).
Internally anki stores everything in a field as html.
For ease of use Anki renders the html in the field directly and hides the html code.
Very similar to your web browser which displays you the rendered html code of a website.
If you want to see the actual html that is stored inside a field simply press `<ctrl-shift-x>` when your cursor is inside a field. This can be very helpful for debug purposes.

The **note type** defines:
* number of **fields** per note
* number of **cards** that should get created form each note
* **card template**, those define how each card should look like 

The **card templates** are written in html and css.
If you want to change the looks of your cards or you want to display a different field on your cards, this is the place to go.

The advantage of this approach is that you separate content from layout.
You can create multiple different cards from the same note.
No need to type the same information multiple times.

The simplest example of this are foreward and backward cards.
Your note type contains one field with a word in your mother tongue and another field with the word in your target language.
In your note type you define two cards, one that goes L1->L2 and a second that goes L2->L1.

You can have multiple note types for different use cases and it's often recommended to have more than one.
For example, as a language learner, I have dedicated note types for picture cards, audio listening cards, cloze deletions and verb conjugations and a few more. Some have only one card template, others have several.

The **cards** themselves are nothing more than tiny webpages build from html, css and (if needed) javascript.
This is why it can only be benificial to learn the very basics of html and css when you want to design you own cards.
Don't worry you don't need to be a web developer, just get an idea of the basic principles.
As you can see in the graphic, each card template has its own html markup (actually there are two, one for the front, one for the back) and all card templates share the same css file.

Let's put this all together:

Every time you add a new **note** to Anki, it creates the **cards** automatically using the **note** as well as the **card templates** defined in the **note type**.
Note that you *add notes* but never *cards*.

That's it.
Quite a lot of special special lingo, I know.
But once you understand this core principle, creating your own note types and design your own card templates will be much easier.
