using DataFrames
#create the DataFrames
df = DataFrame(x1=1, x2=2, y=3)
#print the table
df
#using the regular expression 1 to print 1 entry but for x1 and x2
df[!, r"x"]
#using Not to create all data excluding a certain column
df[!, Not(:x1)]
#Between keeps the columns in between a select few
df[:, Between(:x1, :x2)]
#keep all the columns
df[:, All()]
#select certain columns 
df[:, Cols(x -> startswith(x, "x"))] #keeps all columns that start with the letter x