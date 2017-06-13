module Entity exposing (..)


type alias Position =
    { x : Float
    , y : Float
    }


zeroPosition : Position
zeroPosition =
    { x = 0.0, y = 0.0 }


type Size
    = Square Int


type alias Entity =
    { name : EntityName
    , position : Position
    , direction : Direction
    }


toolboxEntity : EntityName -> Entity
toolboxEntity name =
    Entity name zeroPosition Up


type EntityName
    = TransportBelt
    | FastTransportBelt
    | ExpressTransportBelt
    | WoodenChest
    | IronChest
    | SteelChest
    | AssemblingMachine1
    | Other String


type Direction
    = Up
    | Right
    | Down
    | Left


sizeFor : Entity -> Size
sizeFor { name } =
    case name of
        AssemblingMachine1 ->
            Square 3

        _ ->
            Square 1


readableName : EntityName -> String
readableName entityName =
    case entityName of
        TransportBelt ->
            "Transport Belt"

        FastTransportBelt ->
            "Fast Transport Belt"

        ExpressTransportBelt ->
            "Express Transport Belt"

        WoodenChest ->
            "Wooden Chest"

        IronChest ->
            "Iron Chest"

        SteelChest ->
            "Steel Chest"

        AssemblingMachine1 ->
            "Assembling Machine 1"

        Other str ->
            str


entityID : Entity -> String
entityID entity =
    case entity.name of
        TransportBelt ->
            "transport-belt"

        FastTransportBelt ->
            "fast-transport-belt"

        ExpressTransportBelt ->
            "express-transport-belt"

        WoodenChest ->
            "wooden-chest"

        IronChest ->
            "iron-chest"

        SteelChest ->
            "steel-chest"

        AssemblingMachine1 ->
            "assembling-machine-1"

        Other str ->
            str
