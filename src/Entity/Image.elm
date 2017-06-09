module Entity.Image exposing (image, icon)

{-| Mapping for entities to their respective images
-}

import Entity exposing (Entity, EntityName(..), Direction(..))


basePath : String
basePath =
    "assets/images/"


iconPath : String
iconPath =
    basePath ++ "icons/"


image : Entity -> String
image entity =
    case entity.name of
        TransportBelt ->
            let
                path =
                    basePath ++ "/belt/"
            in
                case entity.direction of
                    Up ->
                        path ++ "belt-up.png"

                    Right ->
                        path ++ "belt-right.png"

                    Down ->
                        path ++ "belt-down.png"

                    Left ->
                        path ++ "belt-left.png"

        Other name ->
            basePath ++ "/" ++ name ++ ".png"


icon : Entity -> String
icon entity =
    case entity.name of
        TransportBelt ->
            iconPath ++ "transport-belt.png"

        Other str ->
            iconPath ++ str ++ ".png"
