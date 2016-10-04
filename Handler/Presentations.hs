module Handler.Presentations where

import Import

getPresentationsR :: Handler Html
getPresentationsR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "presentations")
