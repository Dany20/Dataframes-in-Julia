using DataFrames
#create the DataFrames
df = DataFrame(A=1:2:1000, B=repeat(1:10, inner=50), C=1:500)
#index the first 5 numbers
df[1:5, :]