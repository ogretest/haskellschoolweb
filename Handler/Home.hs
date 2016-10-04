module Handler.Home where

import Text.Hamlet (hamletFile)
import Import

getHomeR :: Handler Html
getHomeR = do
    let handlerName = "getHomeR" :: Text
    let title = $(hamletFile "templates/title.hamlet")
    let navbar = $(hamletFile "templates/navbar.hamlet")
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "homepage")
