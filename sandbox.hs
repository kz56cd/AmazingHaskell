doubleMe x = x + x
doubleUs x y = x * 2 + y * 2

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

doubleSmallNumber' x = (if x > 100
                        then x
                        else x * 2) + 1

-- リスト内包表記
--
-- | .. 出力を意味する
-- <- .. リストからの取り出し、xが受け取る ( = xが束縛している)
-- , .. 条件の追加 (filterに近い。条件に合致したもののみxは受け取る)

-- doubleList = [x * 2 | x <- [1..10], x * 2 >= 12]s

doubleList = [x * 2 | x <- [1..10], x `mod` 7 == 3]
boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x]
