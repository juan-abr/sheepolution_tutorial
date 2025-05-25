function love.load()
    fruits = {"apple", "banana"}
    --print(#fruits)

    table.insert(fruits, "pear")
    table.insert(fruits, "pineapple")
    table.remove(fruits, 2)
    fruits[1] = "tomato"
    --print(#fruits)

    --for i = 1,#fruits do 
    --    print (fruits[i])
    --end

    --for i,v in ipairs(fruits) do 
    --    print(i, v)
    --end
end

function love.draw()
    --love.graphics.print(fruits[1], 100, 100)
    --love.graphics.print(fruits[2], 100, 200)
    --love.graphics.print(fruits[3], 100, 300)

    --for i = 1,#fruits do 
    --    love.graphics.print(fruits[i], 100, 100 + 50 * i)
    --end

    for i,frt in ipairs(fruits) do 
        love.graphics.print(frt, 100, 100 + 50 * i)
    end
end

