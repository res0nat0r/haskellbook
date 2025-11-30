{-# OPTIONS_GHC -Wall #-}

data Trivial = Trivial

instance Eq Trivial where
    Trivial == Trivial = True

data Day = Mon | Tue | Wed | Thurs | Fri | Sat | Sun deriving (Show)
data Date = Date Day Int deriving (Show)

instance Eq Day where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) _ _ = False

instance Eq Date where
    (==)
        (Date weekday dayOfMonth)
        (Date weekday' dayOfMonth') =
            weekday == weekday'
                && dayOfMonth == dayOfMonth'

data Identity a = Identity a

instance Eq a => Eq (Identity a) where
    (==) (Identity v) (Identity v') = v == v'
