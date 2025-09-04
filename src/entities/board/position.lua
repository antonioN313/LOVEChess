local Position = Class:extend()

function Position:constructor(row, column)
    self.row = row
    self.column = column
end

function Position:setRow(row)
    self.row = row
end

function Position:setColumn(column)
    self.column = column
end

function Position:getRow()
    return this.row
end

function Position:getColumn()
    return this.row
end

return Position