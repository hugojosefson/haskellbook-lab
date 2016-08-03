data DayOfWeek =
  Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving Show

instance Eq DayOfWeek where
  (==) Monday    Monday    = True
  (==) Tuesday   Tuesday   = True
  (==) Wednesday Wednesday = True
  (==) Thursday  Thursday  = True
  (==) Friday    Friday    = True
  (==) Saturday  Saturday  = True
  (==) Sunday    Sunday    = True
  (==) _         _         = False

instance Enum DayOfWeek where
  succ Monday    = Tuesday
  succ Tuesday   = Wednesday
  succ Wednesday = Thursday
  succ Thursday  = Friday
  succ Friday    = Saturday
  succ Saturday  = Sunday
  succ Sunday    = Monday
  pred Monday    = Sunday
  pred Tuesday   = Monday
  pred Wednesday = Tuesday
  pred Thursday  = Wednesday
  pred Friday    = Thursday
  pred Saturday  = Friday
  pred Sunday    = Saturday
  toEnum 0 = Monday
  toEnum 1 = Tuesday
  toEnum 2 = Wednesday
  toEnum 3 = Thursday
  toEnum 4 = Friday
  toEnum 5 = Saturday
  toEnum 6 = Sunday
  toEnum x = toEnum $ abs $ x `mod` 7
  fromEnum Monday    = 0
  fromEnum Tuesday   = 1
  fromEnum Wednesday = 2
  fromEnum Thursday  = 3
  fromEnum Friday    = 4
  fromEnum Saturday  = 5
  fromEnum Sunday    = 6
