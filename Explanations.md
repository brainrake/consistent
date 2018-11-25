## How to Find Out What Shit Means

Shit doesn't mean shit by itself. It's how people use it. Your "intuition" of what words mean is actually what you think others would think or do if you said that word in a given context. So don't ask "What does `foo` mean?". That doesn't make sense by itself.

1. Ask "When do people use `foo`?". Make up examples, see if they "sound good".
2. Define `foo` (in a formal language) in a way that matches what you think it means.
3. Use `foo` with other things you have defined, refine it to match more closely what you think it means.

Now you have a formal definition. A _meaning_.

Keep tinkering with it, try different formulations, prove them equivalent or explore the differences. Remember, language is a social construct, and so is this work. Send a Pull Request.


## Definitions

### Meaning

TL;DR Depends what you mean by mean.


`According to ..., the meaning of ... is ...`


Code:
```
class MeaningOf a b
    meaningOf : a -> b
```

Examples:
- [According to association football rules,] the meaning of the referee holding up a red flag is ... .
- [In chess,] the meaning of this move is check.
- According to the rules of evaluating mathematical expressions, The meaning of `2 + 2` is `4`.
- In type theory, the meaning of `2 + 2` is `Integer`.
- In programming language theory, the meaning of `2+2` is `Expression`
- [According to botany,] the meaning of `apple` is ... .
- [In english,] bachelor means unmarried man.


#### What is the meaning of life?

What do you mean meaning? That's what you're actually trying to find out. But you can't. Because it's made up. So it's not really a metaphysical question, but one of personal interpretation.


### Person

Something which people consider to have responsibility.

It is arbitrary that we think of comatose people and corporations as persons, but not primates or computers. We still do. It's a cultural convention, like many others.


### Responsibility

```
data ResponsibleFor = ResponsibleFor Person Event
```


### Freedom

Definition: Freedom is the lack of a necessary cause.

To be free is to not explain why you (necessarily) do things.

A free choice (made by someone else) is one for which I do not know the resons.

There is Intent though.


### Everything


Oh no, unrestricted quantification, is there even such a thing?

In reality, `everything` just good old restricted universal quantification, where the domain is implicit.


```
All _ are _.
```

Examples:
- Everything [in the store] is on sale.
- I like everything [that I know] about the book.


### Equality

An equivalence relation.


Code:
in idris std lib




### Truth

The Boolean value which is not false.
