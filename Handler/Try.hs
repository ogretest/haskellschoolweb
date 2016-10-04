module Handler.Try where

import Import

getTryR :: Handler Html
getTryR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "try")
