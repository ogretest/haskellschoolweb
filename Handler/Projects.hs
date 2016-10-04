module Handler.Projects where

import Import

getProjectsR :: Handler Html
getProjectsR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "projects")
