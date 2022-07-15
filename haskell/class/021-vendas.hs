vendas :: Int -> Int
vendas 0 = 20
vendas 1 = 30
vendas 2 = 40
vendas 3 = 50
vendas 4 = 25
vendas 5 = 60
vendas n = 0

-- totalVendas :: Int -> Int
-- totalVendas n | n == 0 = vendas 0
--               | otherwise = totalVendas (n-1) + vendas n

totalVendas :: Int -> Int
totalVendas 0 = vendas 0
totalVendas n = totalVendas (n-1) + vendas n

maxVendas :: Int -> Int
maxVendas n | n == 0 = vendas 0
            | otherwise = max (vendas(n-1)) (vendas n)