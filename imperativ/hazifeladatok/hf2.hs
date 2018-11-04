mirrorPoint :: (Int, Int) -> (Int, Int) -> (Int, Int) 
mirrorPoint (o1, o2) (p1, p2) = (o1+o1-p1, o2+o2-p2)

f :: Int -> Bool
f x = ((x mod 7) == 0) || ((x mod 11)  == 0)
