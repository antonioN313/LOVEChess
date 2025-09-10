Shove = require 'src/libs/shove'
Class = require 'src/libs/knife/base'
Behavior = require 'src/libs/knife/behavior'
Bind = require 'src/libs/knife/bind'
Chain = require 'src/libs/knife/chain'
Convoke = require 'src/libs/knife/convoke'
Event = require 'src/libs/knife/event'
Gun = require 'src/libs/knife/gun'
Memoize = require 'src/libs/knife/memoize'
Serialize = require 'src/libs/knife/serialize'
System = 'src/libs/knife/system'
Test = require 'src/libs/knife/test'
Timer = require 'src/libs/knife/timer'

require 'src/chessUI'

require 'src/entities/board/board'
require 'src/entities/board/piece'
require 'src/entities/board/position'

require 'src/entities/chess/chessmatch'
require 'src/entities/chess/chesspiece'
require 'src/entities/chess/chessposition'
require 'src/entities/chess/color'

require 'src/entities/chess/pieces/Bishop'
require 'src/entities/chess/pieces/king'
require 'src/entities/chess/pieces/knight'
require 'src/entities/chess/pieces/pawn'
require 'src/entities/chess/pieces/queen'
require 'src/entities/chess/pieces/rook'


require 'src/libs/utils/createEmptyBoolMatrix'
require 'src/libs/utils/generateQuads'
require 'src/libs/utils/recursiveTable'

Fonts = {

}

Textures = {
    ['tileset'] = love.graphics.newImage('./assets/tilest-chess.png')
}

Frames = {
    ['Black-Chess'] = GenerateQuads(Textures['tileset'],96,16), --Quads from atlas tileset with the size from the black pieces
    ['White-Chess'] = GenerateQuads(Textures['tileset'],96,16), --Quads from atlas tileset with the size from the white pieces
    ['Table'] = GenerateQuads(Textures['tileset'],16,16) --Quads from atlas tileset with the size from the checkboard pieces
}

