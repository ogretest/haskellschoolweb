module Handler.Presentations where

import Import

getPresentationsR :: Handler Html
getPresentationsR = do
    let handlerName = "getPresentationsR" :: Text
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "presentations")
