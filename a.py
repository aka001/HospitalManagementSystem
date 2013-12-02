a={}
for i in range(122):
	x=raw_input()
	x=x.split(', ')
	if i not in a.keys():
		a[i]=[]
	for j in x:
		a[i].append(j)
b={}
for i in range(122):
	x=raw_input()
	if i not in b.keys():
		b[i]=""
	b[i]=x
cnt=1
for i in range(122):
	for j in range(len(a[i])):
		print "("+str(cnt)+",\'"+a[i][j]+"\',\'"+b[i]+"\'),"
		cnt+=1
