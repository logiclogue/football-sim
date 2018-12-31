module Team (Team, name, rating) where

newtype Team = Team String Integer

name :: Team -> String
name (Team x _) = x

rating :: Team -> Integer
rating (Team _ x) = x
