--
-- Preliminaries
--


-- Time is a thing.
data Time


-- Persons are a thing.
data Person


-- Events are things with a time.
data Event = MkEvent (Time, event)


-- The known world is a set of events, or a state of affairs.
TheWorld : Type
TheWorld = List Event


-- An action is an event attributed to a person.
Action : Type
Action = (Person, Event)


--
-- The Law and the State
--


-- An obligation is an action that should be taken.
data Obligation = MkObligation Action


-- A law defines obligations as consequences of events.
Law : Type
Law = List Event -> List Obligation


-- The law includes a way to update itself, plus the set of current laws.
TheLaw : Type
TheLaw = (List Event -> TheLaw, List Law)


-- The state is the law and the people.
State : Type
State = (TheLaw, List Person)


--
-- Separation of powers.
--


-- The legislative branch updates the law.
Legislative : Type
Legislative = TheLaw -> TheLaw


-- The judicial branch applies the law to the world to produce obligations.
Judicial : Type
Judicial = TheWorld -> Obligation


-- The executive branch takes obligatory action.
Executive : Type
Executive = Obligation -> Action


Government : Type
Government = ( Legislative, Judicial, Executive )
