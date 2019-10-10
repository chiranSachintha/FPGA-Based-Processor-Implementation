ins ={}
ins['NOPE']    = 0
ins['CLAC']    = 1
ins['LDAC']    = 2
ins['LOADVAL'] = 3
ins['INC']     = 4
ins['JPNZ']    = 5
ins['LSHIFT']  = 6
ins['RSHIFT']  = 7
ins['STAC']    = 8
ins['JUMP']    = 9
ins['MOVE']    = 10
ins['MOVEAC']  = 11
ins['ADD']     = 12
ins['SUB']     = 13
ins['EOP']     = 15
ins['R1' ]     ="4'd1"
ins['R2' ]     ="4'd2"
ins['R3' ]     ="4'd3"
ins['R4' ]     ="4'd4"
ins['R5' ]     ="4'd5"
ins['AR' ]     ="4'd6"
ins['AC' ]     ="4'd7"


f = open('code.txt','r')
code=[]
for line in f:
    b=line.replace('\n','')
    code.append(b)
f.close()

##memory =[]

i = 0
k = 0

while i!=len(code):
    if code[i]=='JUMP' or code[i]=='JPNZ' or code[i]=='LOADVAL':
        a ='memory['+str(k)+"] = 8'd"+str(ins[code[i]])+';'
        print a
        a ='memory['+str(k+1)+"] = 8'd"+code[i+1]+';'
        print a
        i=i+2
        k=k+2
    elif "//" in code[i]:
        print code[i]
        i=i+1
    elif 'MOVE' in code[i] or 'MOVEAC' in code[i] or 'ADD' in code[i] or 'SUB' in code[i]:
        c=len(code[i])
        a = 'memory['+str(k)+"] = {"+ins[code[i][c-2:c]]+",4'd"+str(ins[code[i][0:c-2]])+'}'+';'
        print a
        i=i+1
        k=k+1
    else:
        a = 'memory['+str(k)+"] = 8'd"+str(ins[code[i]])+';'
        print a
        i=i+1
        k=k+1

        

##for x in memory:
##    print x
    
        
	
