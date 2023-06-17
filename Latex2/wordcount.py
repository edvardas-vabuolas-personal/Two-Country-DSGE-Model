from subprocess import call

command = ["bash", "wordcount.sh"]
call(command)
res = open('wordcount.txt', 'r').read().split('Sum of files')[1].split('Sum count: ')[1].split('\n')[0]

output = open("final_wordcount.txt", "w")
output.write(res)
output.close()

print(res)