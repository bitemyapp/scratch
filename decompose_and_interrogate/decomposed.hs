{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import qualified Data.Text.IO as TIO
import Control.Monad.IO.Class

showTemplateHandler = do
  t <- liftIO . TIO.readFile $ "latex.template"
  text "what"

showTemplateRoute = get "/showtemplate" $ showTemplateHandler

main = scotty 3000 $ showTemplateRoute

-- *Main> :r
-- [1 of 1] Compiling Main             ( smini.hs, interpreted )

-- smini.hs:8:10:
--     Couldn't match expected type `scotty-0.6.2:Web.Scotty.Types.ActionT
--                                     Data.Text.Lazy.Internal.Text IO t0'
--                 with actual type `IO Data.Text.Internal.Text'
--     In the return type of a call of `TIO.readFile'
--     In a stmt of a 'do' block: t <- TIO.readFile "latex.template"
--     In the second argument of `($)', namely
--       `do { t <- TIO.readFile "latex.template";
--             text "what" }'
-- Failed, modules loaded: none.
