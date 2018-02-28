--
-- Preliminaries
--
import Data.Vect


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
-- The Law
--


-- An obligation is an action that should be taken.
data Obligation = MkObligation Action


-- A law defines obligations as consequences of events.
Law : Type
Law = List Event -> List Obligation


-- The law includes a way to update itself, plus the set of current laws.
TheLaw : Type
TheLaw = (List Event -> TheLaw, List Law)


-- The current law is the law.
the_law : TheLaw


--
-- Separation of powers.
--

-- The three branches
data GovernmentBranch
    = Legislative
    | Judicial
    | Executive


GovernmentBranches : Vect 3 GovernmentBranch
GovernmentBranches = [Legislative, Judicial, Executive]


-- Each government branch is granted the power to perform a function
power : GovernmentBranch -> Type
-- The legislative branch updates the law.
power Legislative = TheLaw -> TheLaw
-- The judicial branch applies the law to the world to produce obligations.
power Judicial = TheLaw -> TheWorld -> List Obligation
-- The executive branch takes obligatory action.
power Executive = Obligation -> Action


-- A person can be said to perform a function
data Performs f = MkPerforms Person


-- A government is the sets of people performing the functions of the branches
Government : Type
Government =
    let
        people_of = \x => List (Performs (Main.power x))
    in
        (people_of Legislative, people_of Judicial, people_of Executive)


-- The current government
the_government : Government


-- The state is the law plus the people who update, decide, and act on it.
State : Type
State = (TheLaw, Government)
