module Handler.Projects where

import Import

getProjectsR :: Handler Html
getProjectsR = do
    let handlerName = "getProjectsR" :: Text
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "projects")
