module Handler.Try where

import Handler.Common
import Import

getTryR :: Handler Html
getTryR = do
    let navbar = makeNavbar "try"
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "하스켈 학교"
        $(widgetFile "try")
