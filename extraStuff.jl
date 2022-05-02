using CategoricalArrays
using DataFrames
#create the DataFrame
df = DataFrame(a=1:2, b=[1.0, missing],c=categorical('a':'b'), d=[1//2, missing])
#print the result
println(df)