> module ListComprehension where

t : α → β
xs : List α
⊢ [ t x | x <- xs ] : List β


(arrows point from binders to bindees)

[ t x | x <- xs ]
     \__↓
  ≡ 
map t xs

[ x | x <- xs , p x ]
   \__↓__________/
  ≡ 
filter p xs
        
[ t x | x <- xs, p x ]
     \__↓_________/
  ≡ 
[ t x' | x' <- [ x | x <- xs , p x ] ]
     \___↓        \__↓__________/
  ≡ 
[ t x | x <- [ x | x <- xs , p x ] ]
     \__↓       \__↓__________/
  ≡ 
map t (filter p xs)

[ t x | x <- xs , p₁ x , p₂ x , … , pₙ x ]
     \__↓____________↑______↑__ … ____/
  ≡ 
map t (filter (conjer [p₁ , … , pₙ]) xs)

> conjer :: [a -> Bool] -> (a -> Bool)
> conjer [] x = True
> conjer (p : ps) x = p x && conjer ps x

