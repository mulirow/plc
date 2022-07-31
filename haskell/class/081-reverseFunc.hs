foo :: (Num t) => t -> t -> t
foo x y = x - y

revFoo = (\x y -> foo y x)