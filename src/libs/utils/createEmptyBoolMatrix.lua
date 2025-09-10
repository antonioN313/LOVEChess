function createEmptyBoolMatrix(rows, cols)
    local mat = {}
    for r = 1, rows do
        mat[r] = {}
        for c = 1, cols do
            mat[r][c] = false
        end
    end
    return mat
end

