-- | Common handler functions.
module Handler.Common where

import Text.Hamlet          (hamletFile)
import Data.FileEmbed (embedFile)
import Import

-- These handlers embed files in the executable at compile time to avoid a
-- runtime dependency, and for efficiency.

getFaviconR :: Handler TypedContent
getFaviconR = do cacheSeconds $ 60 * 60 * 24 * 30 -- cache for a month
                 return $ TypedContent "image/x-icon"
                        $ toContent $(embedFile "config/favicon.ico")

getRobotsR :: Handler TypedContent
getRobotsR = return $ TypedContent typePlain
                    $ toContent $(embedFile "config/robots.txt")

makeNavbar tabName =
  let aboutClass = if tabName == "about" then "active" else "" :: Text
      projectsClass = if tabName == "projects" then "active" else "" :: Text
      presentationsClass = if tabName == "presentations" then "active" else "" :: Text
      tryClass = if tabName == "try" then "active" else "" :: Text
      membersClass = if tabName == "members" then "active" else "" :: Text
  in
      $(hamletFile "templates/navbar.hamlet")
