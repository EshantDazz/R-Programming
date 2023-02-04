##Named Vectors
e<-1:5
e


#give names
names(e) #--> it will give null
?names

names(e)<-c('a','b','c','d','e')
e
e['e']


#clear names
names(e)<-NULL
e


#Naming Matrix Dimension
temp.vec<-rep(c('a,','B','zZ'),3)
temp.vec

mat<-matrix(temp.vec,3,3)
mat

rownames(mat)<-c('How','are','you')
mat
colnames(mat)<-c('I','am','good')
mat

mat['are','good']
