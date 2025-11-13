data Mood = Blah | Woot deriving (Show)

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

rev x = reverse x

revxxx y = reverse y
