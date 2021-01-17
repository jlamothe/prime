{-

prime

Copyright (C) 2021 Jonathan Lamothe <jonathan@jlamothe.net>

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

module Data.Prime.PrimesSpec (spec) where

import Test.Hspec (Spec, describe, it, shouldBe)

import Data.Prime

spec :: Spec
spec = describe "primes" $ let
  expected = [2, 3, 5, 7, 11, 13, 17, 19, 23]
  len      = length expected
  in it ("should be " ++ show expected) $
    take len primes `shouldBe` expected

--jl