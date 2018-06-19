--
-- A logical description of some aspects of laws, the state, and separation of powers.
--

-- Preliminaries. A vector is a list with known length.
import Data.Vect


-- There is time.
data Time


-- There are Persons.
data Person


-- Events are things with a time.
data Event = MkEvent (Time, event)


-- An action is an event attributed to a person.
Action : Type
Action = (Person, Event)


-- The known world is a set of events, or a state of affairs.
TheWorld : Type
TheWorld = (List Event, List Action)

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


-- The current set of laws and how to update them
the_law : TheLaw
the_law = (?how_to_update_the_law, ?list_of_laws)

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


-- The current government consists of the people currently employed in the branches
the_government : Government
the_government =
    (?legislative, ?judiciary, ?executive)

-- A state is the law plus the people who update, decide, and act on it.
State : Type
State = (TheLaw, Government)


-- The state consists of the current law and the current government
the_state : State
the_state = (the_law, the_government)
