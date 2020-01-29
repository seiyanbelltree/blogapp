N, Q = map(int, input().split())

rootlist = [[] for _ in range(N-1)]
valuelist = [0 for _ in range(N)]
rootlist[0].append(1)

for i in range(N-1):
    a, b = map(int, input().split())
    rootlist[i].append(rootlist[a-1])
    rootlist[i].append(b)

for i in range(Q):
    p, x = map(int, input().split())
    valuelist[p-1] += x