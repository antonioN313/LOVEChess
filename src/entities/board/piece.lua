local Piece = Base:extend()

function Piece:constructor(board)
    assert(board ~= nil, "Piece requires a Board instance")
    self.position = nil
    self.board = board
end

function Piece:getBoard()
    return self.board
end

function Piece:possibleMoves()
    error("possibleMoves() must be implemented by subclass")
end

function Piece:possibleMove(position)
    local mat = self:possibleMoves()
    local r = position:getRow()
    local c = position:getColumn()
    if mat[r] == nil or mat[r][c] == nil then
        return false
    end
    return mat[r][c]
end

function Piece:isThereAnyPossibleMove()
    local mat = self:possibleMoves()
    local mat = self:possibleMoves()
    for r = 1, #mat do
        for c = 1, #mat[r] do
            if mat[r][c] then
                return true
            end
        end
    end
    return false
end

return Piece