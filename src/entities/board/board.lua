local Board = Base:extend()

function Board:constructor(rows, columns)
    self.rows = rows
    self.columns = columns
    self.pieces = {}

end

function Board:getRows()
    return self.rows
end

function Board:getColumns()
    return self.columns
end

function Board:piece(row, columns)
    return self.pieces[row][column]
end

function Board:positionPiece(position)
    return self.pieces[position:getRow()][position:getColumn()]
end

function Board:placePiece(piece, position)

    self.pieces[position:getRow()][position:getColumn()] = piece
    piece.position = position

end

function Board:removePiece(position)

    local p = self:piece(position)
    if p == nil then
        return nil
    end

    p.position = nil
    self.pieces[position:getRow()][position:getColumn()] = nil
    return p

end

function Board:positionExists(position)
    if type(rowOrPosition) == "table" and rowOrPosition.getRow then
        local position = rowOrPosition
        return self:positionExists(position:getRow(), position:getColumn())
    else
        local row = tonumber(rowOrPosition)
        local column = tonumber(maybeColumn)
        if not row or not column then return false end
        return row >= 1 and row <= self.rows and column >= 1 and column <= self.columns
    end
end

function Board:thereIsAPiece(position)
    return self:piece(position) ~= nil
end

return Board