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
threeConditons = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]
twoLists = [x + y | x <- [1, 2, 3], y <- [10, 100, 1000]]
twoLists' = [x * y | x <- [2, 5, 10], y <- [8, 10, 11], x * y > 50]

-- “この関数は、リストのすべての要素を1に置換してからsumで足し合わせてリストの長さを得ます。”
length' xs = sum [1 | _ <- xs]

-- “すべての仕事をこなしているのは、新しいリストに含まれるものはリスト['A'..'Z']に含まれるものだけだ、という述語です”
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- タプルの特徴（リストと比較して）
--  * 複数の違う型を格納可能
--  * サイズが固定

twoDimensionalVectorLists = [(1, 2), (8, 11), (4, 5)]

-- fst (タプルの最初の要素取得)
-- snd (タプルの2番目の要素取得)
-- zip (二つのリストをタプルにまとめたリストに変換)

-- ピタゴラスの定理を用い、全辺の長さが24の直角三角形を求める
rightTriangles =
  [(a, b, c)
    | c <- [1..10], a <- [1..c], b <- [1..a],
    a^2 + b^2 == c^2, a + b + c == 24
  ]

  -- “このように、最初に解の候補となる集合を生成し、
  -- それから1つ（もしくは複数）の解に辿り着くまで変換とフィルタリングを行うという手法は、
  -- 関数プログラミングでよく用いられるパターンです。”
