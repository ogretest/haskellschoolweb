module Handler.Presentations where

import Text.Hamlet (hamletFile)
import Import

getPresentationsR :: Handler Html
getPresentationsR = do
    let handlerName = "getPresentationsR" :: Text
    let title = $(hamletFile "templates/title.hamlet")
    let navbar = $(hamletFile "templates/navbar.hamlet")
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "presentations")
