module Handler.Home where

import Import

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "homepage")
