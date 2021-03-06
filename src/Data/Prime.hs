{-|

Module      : Data.Prime
Description : prime number tools
Copyright   : (C) 2021 Jonathan Lamothe
License     : GPLv3 (or later)
Maintainer  : jonathan@jlamothe.net
Stability   : stable

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

-}

module Data.Prime (primes, isPrime, isComposite) where

-- | a list of all prime numbers
primes :: [Integer]
primes = f 2 [] where
  f n ps = if checkPrimes n ps
    then n : f (succ n) (ps ++ [n])
    else f (succ n) ps

-- | checks to see if a given number is prime
isPrime :: Integral n => n -> Bool
isPrime n = if n < 2
  then False
  else checkPrimes (toInteger n) primes

-- | checks to see if a given number is composite
isComposite :: Integral n => n -> Bool
isComposite n = if n < 2
  then False
  else not $ checkPrimes (toInteger n) primes

checkPrimes :: Integer -> [Integer] -> Bool
checkPrimes _ [] = True
checkPrimes n (p:ps)
  | p * p > n      = True
  | n `mod` p == 0 = False
  | otherwise      = checkPrimes n ps

--jl
