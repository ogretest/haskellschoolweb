module Handler.Presentations where

import Handler.Common
import Import

getPresentationsR :: Handler Html
getPresentationsR = do
    let navbar = makeNavbar "presentations"
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "presentations")
