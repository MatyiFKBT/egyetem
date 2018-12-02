decompress :: Eq a => [(Int,a)] -> [a]
decompress [] = []
decompress (b:bs) = replicate (fst b) (snd b) ++ decompress bs 

 
group' :: Eq a => [a] -> [[a]]
group' [] = []
group' (b:bs) = ( b : fst ( span (== b) bs)) : group' (snd( span ( == b ) bs ))


reduce :: Eq a => [a] -> [a]
reduce = map head . group'
