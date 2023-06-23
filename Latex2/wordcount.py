from subprocess import call

command = ["bash", "wordcount.sh"]
call(command)
res = open('wordcount.txt', 'r').read().split('Sum of files')[1]

output = open("final_wordcount.txt", "w")
output.write(res.split('Sum count: ')[1].split('\n')[0])
output.close()

detailed_output = open("detailed_wordcount.txt", "w")
detailed_output.write(res.split('File(s) total: main.tex')[1])
detailed_output.close()

print(res)