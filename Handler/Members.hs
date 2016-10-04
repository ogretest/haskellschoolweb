module Handler.Members where

import Handler.Common
import Import

getMembersR :: Handler Html
getMembersR = do
    let navbar = makeNavbar "members"
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "members")
