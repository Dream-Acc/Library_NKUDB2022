# import pymysql
# conn = pymysql.connect(host='localhost', user='root', password='root', database='mydb', charset='utf8')
# # 获取cursor对象
# cursor = conn.cursor()
# sql = "select *,count(book.Book_name) from book group by book.Book_name; "
# cursor.execute(sql)
# retdat = cursor.fetchall()
# index = []
# book_name = []
# for row in retdat:
#     book_name.append(row[1])
#     index.append(row[3])
# conn.close()
# import matplotlib.pyplot as plt
# plt.rcParams['font.sans-serif'] = ['SimHei']
# plt.rcParams['axes.unicode_minus'] = False
# plt.xlabel("bookname")
# plt.ylabel("count")
# plt.bar(book_name,index)
# plt.show()

import pymysql
conn = pymysql.connect(host='localhost', user='root', password='root', database='mydb', charset='utf8')
# 获取cursor对象
cursor = conn.cursor()
sql = "select reader.Reader_name,count(borrow.Rorrow_Reader_id) from borrow,reader where borrow.Rorrow_Reader_id = reader.Reader_id group by borrow.Rorrow_Reader_id; "
cursor.execute(sql)
retdat = cursor.fetchall()
index = []
Reader_name = []
for row in retdat:
    Reader_name.append(row[0])
    index.append(row[1])
conn.close()
import matplotlib.pyplot as plt
plt.rcParams['font.sans-serif'] = ['SimHei']
plt.rcParams['axes.unicode_minus'] = False
# plt.xlabel("bookname")
# plt.ylabel("count")
explode=[0.01,0.01,0.01,0.01,0.01]#设定各项距离圆心n个半径
# plt.bar(Reader_name,index)
plt.pie(index,explode=explode,labels=Reader_name,autopct='%1.1f%%')
plt.show()
