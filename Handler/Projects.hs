module Handler.Projects where

import Text.Hamlet (hamletFile)
import Import

getProjectsR :: Handler Html
getProjectsR = do
    let handlerName = "getProjectsR" :: Text
    let title = $(hamletFile "templates/title.hamlet")
    let navbar = $(hamletFile "templates/navbar.hamlet")
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "projects")
