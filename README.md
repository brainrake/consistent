# Consistent Shit

A unified account of why, how, and what.


## Introduction

Life and/or the world is full of shit. There's so much shit, it's hard to tell what shit is what. We can't tell the true shit from the bullshit.

People don't know shit. Most don't even give a shit. I do. I want to figure this shit out.

This work is an interlinked set of documents (like a wiki) explaining most of the shit there is, in a way that makes sense. Should inclulde Idris source.


### Makes sense? What does that even mean?

Commonly used naturally evolved languages are stunningly efficient in human communication, yet in many cases they are notoriously ambiguous.

Conversely, in formal languages and logic, meanig is given by definition, and by composition of small pieces into larger sentences. The information contained in, or the meaning of sentences is equivalent with the arrangement of symbols that make them up.

Logic can't tell you "what's out there". But given what you already know, it can help you figure out what you can (truthfully) say, what to expect, what makes sense, and what stuff means.

Other seeming limitations (like Gödel's incompleteness theorem, or the liar paradox) are in fact important discoveries about the fundamental structure of information and meaning.


#### A language with definite meaning

In order to properly discuss any matter of consequence, a formal language is required. Only then can we truly know what sentences mean and how to combine them in ways that make sense.

Without a formal, logical language, one can never be sure what things *really* mean, and everything is always up for interpretation.

Ironically, by defining stuff, it loses any meaning beyond the possible arrangement of symbols related to it. Like a crossword puzzle in a foreign language, using a dictionary.


#### Humans should use formal logical languages

in all areas of life where choices have consequences, especially where public discourse is involved. Particularly:

- metaphysics (plz define god kthxbai)
- philosophy
- law (it's not fair if you don't know what it means, or if there are contradictions in it)
- programming (programs crash iff they don't make sense)
- public debate and politics (you can't be right if your argument is invalid)
- life choices (if you want to live long and free, lead a healthy lifestyle and don't commit crimes)
- everyday human interaction

but probably not for art or comedy In fact, everything that doesn't use logic, in a sense, is art.


### To detractors

Don't be lazy or a luddite. If you think this shouldn't be done, come up with something better than these:


#### Can't do it

It is impossible. Nope. It's just too hard. Human thinking is just too complex, or worse, magical (perhaps a mind separate from your body).

Well, have you tried? We formalized a lot of stuff, learned a great deal, and got shit done. Besides, if it isn't formalized, we can't be sure what it really means. So we have to try.


#### The humanity!

If we logic everything, we'll become mindless robot computers! We will lose what makes us human!

No we won't. We'll fulfill it. We're the only creature capable of abstract reasoning. We should put our biased shortcut-based animagical thinking behind us and build a just, logical, free society. We will have more time to enjoy life and art, with less to worry about.

To err is animal. To reason is human. To compute fast is computer. To adverb is verb.


# On the meaning of shit

What does it mean to exist? Do you have free will? What do you know and why?

Milennia of philosophy and we're still arguing about this shit. There must be a better way. Maybe not so definitive and all-encompassing, but at least meaningful (logical).


### The Human Decision Problem

Turns out there is a better way, a behavioral approach that captures the complexity of human thought. Let us not look at the words themselves, but how people use them in sentences. Let's ask Yes/No questions and see how people might answer them.

To find meaning, truth, or knowledge, it is often fruitless to ask oneself. Is it true? Why do I want that? How should I know? We have to consider the externally observable facts instead. We ask someone else. Or they ask us. It is in communication that these concepts are elucidated, because it is in communication that we _use_ them.

In a sense, we're never really asking "Is it true?" or "What is the meaning of this RNA?". We're asking, "What would you say if someone asked you if it is true?" or "What protein would a rhibosome build if I gave it this messenger RNA?". Words don't have meaning by themselves, only in combination with other words, in the act of communication (computation).

There is no way I can find out wether you (really, freely) want something, what you know, or what you believe is true, other than just asking. If what you say makes sense (together with what I already know), I have to assume that it is so. Innocent until proven guilty. If it weren't, and I couldn't, there would hardly be any point to communication, we might as well make random noises.


#### Honest people make sense

Most of the time people don't make sense. And they lie. A lie is just a special case of nonsense, which would make sense except that in actuality its negation is true, which causes a contradiction.

Reasons that a person might lie (or equivalently, talk nonsense):
- it is tedious to express ideas in formal language in most situations
- memory is fallible
- not understanding the question
- not realizing they are being inconsistent
- being in a degraded mental state (distress, sleepwalking, delusion)
- knowingly interfering with the listener's beliefs,
    - usally because the listener knowing the truth would put the liar at some kind of disatvantage

Formal languages make lying harder, incentivizing actions that can be acknowledged, leading to a more honest society.

For now we have to assume an honest conversation - participants don't lie and want everyone to agree on what shit they say means - so truthful logical discourse is the only real option.


## On what there is

In a logical language, existence is not a predicate or a verb. It is a quantifier, a different kind of language element.

`A shit exists` is as meaningless to say as `A shit is`. Is what? Here's what makes sense though: `A shit is blue`.

Logically:
`There exists a shit such that it is blue.`
And it means exactly this:
`Not all shits are not blue`.
Nothing more, nothing less.

So there's no suh thing as "to exist", only for some or all elements of a set to "have a certain property". The confusion stems from the limited way we treat human languages, treating "is" like a verb when it is a different type of expression. It behaves much like a predicate, but _requires_ an object.

More on this: first order logic defines the pair of quantifiers: the existential quantifier "There exists a _ such that _" and the universal quantifier "All _ are such that _". Only one is required, the other can be defined in terms of it, as above.


### On what has to be, what might be, and what actually is

Modal logic introduces the pair of operators "possibly" and "necessarily". If something is necessarily true, it can not possibly not be true. Again, only one is required to be basic. One may introduce "actually" to distinguish possible truths that are deemed true in the actual world (but don't necessarily follow from logical axioms or prior knowledge).

More on this: Modal Logic


### On what we imagine there is

All right then, but what is the difference between real persons and characters in a story? This one is solved by introducing two modes of predication, two ways of interpreting "is".

Sherlock Holmes encodes being a detective. Allan Pinkerton exemplifies being a detective.


More on this: The Theory of Abstract Objects


## On Truth

What does it mean for something to be true? Is there truth in the world? How can we find or verify it?

As usual, we can ask.


### Ask

About the empirical: there is no way to tell for sure wether someone is genuinely experiencing something. So we'll just have to accept it on good faith. Do you see red?


### What does it mean?

Fortunately we developed a rich set of tools for analyzing the purported truth of sentences, based on what things mean and how we combine them. We have constructed logics to explore concepts related to truth: consequence, proof, argument. We have formal languages to precisely state them, automated theorem provers and proof assistants to prove, disprove, find models or counterexamples, and analyze them.

So if we assume some basic propositions about our senses as true, we can use logic to:
- verify that they are compatible (they can all be true at the same time), or conversely reveal an error in formalization
- construct true sentences that are consequences of our assumptions
- explain what complex sentences mean, based on the meanings of the ones we took for granted


### Strange consequences.

To say that a sentence is true is nothing more than to say that sentence.

Example:
I am full of shit
vs
It is true that I am full of shit.


Yes, there are social implications of saying "True!" beyond meaningless repetition, like showing support and driving group dynamics. But we are concerned with logic now.


### Knowledge

It's one of those problematic things. How do you know that you really know something? How do I know that you know? Well, I have to ask.

For a long time *Justified True Belief* was the game. Gettier pointed out some cases where "justified" is more complicated than it seems.

The truth is, I can't really find out wether you know anything at all, other than by asking you. And when I do, the only thing I find out is that you *say* you know. But since there is no real way to tell, that's as good as it gets. So, as usual, let's try to find a rule for when people can consistently say they know something. We will assume this is what they mean when they say they know something, and we will adopt is as a rule to say when we know stuff.

The problem with knowing anything about the real world is that we have to take sense experience at face value.


## Free Will

How do we know if someone has it? We can't really.

As usual, we can ask.


### Communicated Intent

is a clearly definable and intuitive concept that captures much of "free will". Here it is:


#### If you say you want to do something, I will conclude that you want to do it.

Example: **I am going to take a shit**.

In the end, it's just a way to assign blame. If I thought the bathroom is in use and waited for an hour with a full bladder just to find out that you were in fact playing Counter-Strike, I would blame you for my bladder discomfort.


### Inferred Intent

Where intent has not been explicitly communicated, but we infer it from context. It is a weaker form of intent, and the intender can not be held responsible for actions based on inferred intent.

If I thought you went to take the shit, but you didn't say you were going to, it's my fault for not checking wether the bathroom is free.


### It makes sense!

Example: You thought you chose freely but in fact were secretly influenced. Were you really free? Hard to answer consistently. Here are some easier ones using the concepts just introduced:

- Did you want to do it at the time? (read: Would you have said yes if I asked you if you wanted to do it?)
- If you had known that you are being influenced, would you have wanted to do it? (read: Would you have said yes if I told you about the influence and asked you if you want to do it?)
- Do you want to do it (again) now? (read: Would you say yes if I asked you if you want to do it now?)


### Strange Consequences

Explaining the reason for an intent amounts to removing the "free choice" behind it.

Example:
I am going to take a shit because I want to. (free choice)
vs
I am going to take a shit because I am literally full of shit and my rectum is bursting. (necessity)

Interestingly, saying "because I want to" is equivalent to saying nothing at all.


#### To be free means to not explain your actions


### That feeling tho

But it *feels* like I'm making this decision. Like I have the power. Me. I know what I want.

Well, it really feels like you don't have a blind spot near the center of your field of vision. But you [totally do](https://en.wikipedia.org/wiki/Blind_spot_(vision)).

As we know, the universe is part deterministic, part random. There is no evidence of spirits, selves, or other spooky stuff independent of our bodies, influencing what actually happens. And our bodies are made of physics stuff. So what we end up doing is caused by previous interactions (DNA, brain structure, memories) and luck.

It appears that the illusion of consious decision comes down to thinking about choices (before) and rationalizing them (after). There is no "actual" choice, just as there is no actual chooser, separate from our physicsy (causal+lucky) bodies.


### It's a trap!

So why play along with the illusion? Especially since free choice doesn't amount to anything, in fact it is the _lack_ of information. The answer is, it's a benign, even useful illusion, like private property or colors. It lets us play the blame game. It's a rule of thumb we made up to decide who we can shun when shit doesn't happen the way we want. Ironically, this also reinforces the feeling of each individual that they are indeed making choices.

There is an even more general usefulness to the concept of free will. Wether we decide to or not, contemplating a choice is associated with better outcomes. We imagine that we can choose, so we think about the choices, and in doing so, discover the merits thereof, and perhaps think of new ones.

If people believe it, it's also a way to change their behavior, by changing the incentives. Eg. don't fuck children, you'll go to jail. If we find out. There are no children in jail, and your asshole is in grave danger. So yeah, you should know that in case you "decide" to do it. You can't really decide either way, but just knowing makes you less likely to do it.

Yeah, I know, it's creepy. I have no choice but to say that free will is a good thing. And you had no choice but to read this tripe. And if we hadn't, it would have been because of old shit or random shit.
