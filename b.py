import sys
a=[]
x=raw_input()
while x:
	x=x.lstrip()
	a.append(x)
	try:
		x=raw_input()
	except:
		break
cnt=1
for i in a:
	print "("+str(cnt)+",\'"+i+"\'),"
	cnt+=1
