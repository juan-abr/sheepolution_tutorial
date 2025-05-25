local test
test = 99

return test

function some_function(test)
    if true then
        local test = 40
        print(test)
    end

    print (test)
end

some_function(30)

print(test)
