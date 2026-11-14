-- Write your query below
select left_operand, operator, right_operand, 
    case 
        when e.operator = '=' and a.value = b.value then 'true'
        when e.operator = '>' and a.value > b.value then 'true'
        when e.operator = '<' and a.value < b.value then 'true'
        else 'false' end
    as value
from expressions e  join variables a on e.left_operand = a.name
                    join variables b on e.right_operand = b.name
