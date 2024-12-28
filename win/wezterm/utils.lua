--[[
  Shallow Copy = creates a new object but only copies the top-level values, meaning any nested objects or tables are still shared between the original and the copy.
  For example, if you copy a table that has another table inside it, both the original and the copy will point to the same inner table, so changes to the inner table affect both.
  Function to combine tables by copying values from multiple tables (tables are similar to arrays/lists) into one.
--]]
local shallowCopyAndAssign = function (...)
    local args = {...} -- Collect all the tables passed to the function
    local merged = args[1] or {} -- Start with the first table, or an empty one if no table is given

    -- Loop through the remaining tables (starting from the second one)
    for i = 2, #args do
        local tbl = args[i] -- Get the current table
        -- Add each key-value pair from the current table to the merged table
        for k, v in pairs(tbl) do
            merged[k] = v -- Copy the value into the merged table
        end
    end

    -- The function doesn't return anything; it just modifies the merged table
end

return {
	shallowCopyAndAssign = shallowCopyAndAssign
}

