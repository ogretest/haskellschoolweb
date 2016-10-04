module Handler.Projects where

import Handler.Common
import Import

getProjectsR :: Handler Html
getProjectsR = do
    let navbar = makeNavbar "projects"
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "projects")
