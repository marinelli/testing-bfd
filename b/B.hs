{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralisedNewtypeDeriving #-}

module B where

newtype SomeType = SomeValue Int
  deriving newtype (Num)

someValue :: SomeType
someValue = 123
