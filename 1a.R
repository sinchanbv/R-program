print(getwd())

setwd("/home/bmsce/Desktop")

data1 = read.csv("bank-data.csv")

data1 = head(data1, 10)
data2 = data.frame(data1[0])

print(data1)
print(data2)
for(i in data1){
  flag=0
  for(j in i){
    #print(typeof(j))
    print(typeof(j))
    if(typeof(j)=="integer" || typeof(j)=="numeric"){
      
      if(flag!="o"){
        flag=1
      }
    }
    if(flag==1){
      data2 = cbind(data2, i)
      flag="o"}
    
  }
}
print(summary(data2))
plot(data2,type="o",xlab="Age",ylab="Cars owned",main="Car distribution among the different age groups[Sinchan-1BM16CS150-B3]")

print(data2)
print(summary(data1))

