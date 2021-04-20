-- Usage: tabletostring(your table's variable here)

function tabletostring(tab)
if type(tab) == "table" then -- check if the argument is a table
res = table.concat(tab)
return res
else
-- not an table
end
end
