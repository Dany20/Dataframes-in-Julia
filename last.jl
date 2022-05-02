using DataFrames
#create the DataFrames
df = DataFrame(A=1:2:1000, B=repeat(1:10, inner=50), C=1:500)
#print the last 6 entries of the table
last(df,6)