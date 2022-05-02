using DataFrames, Random
#First we create an empty DataFrames
DataFrame()
#create a dataframe with figures inside and call it
df = DataFrame(A=1:3, B=rand(3), C=randstring.([3,3,3]), fixed=1)
df
#creating a dataframe from a dictionary
x = Dict("A" => [1,2], "B" => [true, false], "C" => ['a', 'b'], "fixed" => Ref([1,1]))
y = DataFrame(x)
y
#This time we used Ref to protect a vector from being treated as a column and forcing broadcasting it into every row of :fixed column (note that the [1,1] vector is aliased in each row).
z = DataFrame(:A => [1,2], :B => [true, false], :C => ['a', 'b'])
z
#Although, in general, using Symbols rather than strings to denote column names is preferred (as it is faster) DataFrames.jl accepts passing strings as column names, so this also works:
q = DataFrame("A" => [1,2], "B" => [true, false], "C" => ['a', 'b'])
q
#You can also pass a vector of pairs, which is useful if it is constructed programatically:
b = DataFrame([:A => [1,2], :B => [true, false], :C => ['a', 'b'], :fixed => "const"])
b
#Here we create a DataFrame from a vector of vectors, and each vector becomes a column.
c = DataFrame([rand(3) for i in 1:3], :auto)
c
#another one
d = DataFrame([rand(3) for i in 1:3], [:x1, :x2, :x3])
d #calls the dataframe
#and another one
e = DataFrame([rand(3) for i in 1:3], ["x1", "x2", "x3"])
e
#As you can see you either pass a vector of column names as a second argument or :auto in which case column names are generated automatically.

#In particular it is not allowed to pass a vector of scalars to DataFrame constructor.
#DataFrame([1, 2, 3]) will produce an error(Vector{64}) instead use
s = DataFrame(permutedims([1, 2, 3]), :auto)
s
#You can also pass a vector of NamedTuples to construct a DataFrame:
v = [(a=1, b=2), (a=3, b=4)]
t = DataFrame(v)
t
#To get more information please go here: https://github.com/bkamins/Julia-DataFrames-Tutorial/blob/master/01_constructors.ipynb
