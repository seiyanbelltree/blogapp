N, M = map(int, input().split())
tmplist = [list(map(int, input().split())) for i in range(N)]
worklist = [[] for _ in range(10 ** 5)]
for i, j in tmplist:
    worklist[i-1].append(j)

anslist = []
for i in range(1,M+1):
    anslist.append(worklist[i][M-i:])


print(worklist)