#Convert a hash into an array. Nothing more, Nothing less.
#Input - {name: 'Jeremy', age: 24, role: 'Software Engineer'}
#Output - [["age", 24], ["name", "Jeremy"], ["role", "Software Engineer"]]


hash = {name: 'Jeremy', age: 24, role: 'Software Engineer'}

def hash_To_array(hash)
    array = []
    hash.each do |key, value|
        array.push([key.to_s, value])
    end
    array.insert(1,array.delete_at(0))
    print array
end

hash_To_array(hash)

