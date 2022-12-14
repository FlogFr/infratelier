module Data.BlogPostEntry where

import Protolude

import qualified Data.Yaml as Y
import Data.Time


data BlogPostEntry = BlogPostEntry
  { template :: Text
  , category :: Text
  , slug :: Text
  , title :: Text
  , summary :: Text
  , author_name :: Text
  , author_email :: Text
  , tags :: [Text]
  , created :: UTCTime
  , updated :: UTCTime
  , image :: Text
  } deriving (Show, Generic, Eq)


instance Y.ToJSON BlogPostEntry
instance Y.FromJSON BlogPostEntry
