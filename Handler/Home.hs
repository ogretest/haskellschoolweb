module Handler.Home where

import Handler.Common
import Import

getHomeR :: Handler Html
getHomeR = do
    let navbar = makeNavbar "about"
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "homepage")
