using DataFrames
#create the DataFrames
df = DataFrame(A=1:2:1000, B=repeat(1:10, inner=50), C=1:500)
#index the first 5 numbers
df[1:5, :]#the ':' sign means that all the items(rows,columns depending on position) should be printed out
#indexing the C columns
df[[1,5,10], :]
#indexing only the A and B columns
df[:, [:A, :B]]
#indexing 3 entries and only A and be
df[1:3, [:B, :A]]
#Indexing the first two entries of column C
df[[3, 1], [:C]]
#df[:,[:A,:B]] can also be defined using df[!,[:A,:B]]
#however df[!, :A] produces a vector
df[!, :A] == df[:,:A] #this returns true as all these produce Vectors