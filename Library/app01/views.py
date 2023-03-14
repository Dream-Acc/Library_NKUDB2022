from django.shortcuts import render,redirect
from app01 import models
# Create your views here.
def add_publisher(request):
    if request.method == "POST":
        # 获取表单提交的内容
        publisher_name = request.POST.get("name")
        publisher_address = request.POST.get("address")
        # 保存到数据库中
        models.Publisher.objects.create(name=publisher_name,address=publisher_address)
        return redirect("/app01/publisher_list")
    return render(request,"add_publisher.html")


def publisher_list(request):
    # 查询数据库中的所有信息
    publisher_list=models.Publisher.objects.all()
    return render(request,"publisher_list.html",{"publisher_obj_list":publisher_list})


def edit_publisher(request):
    if request.method == 'POST':
        # 1获取表单提交过来的内容
        id = request.POST.get('id')
        name = request.POST.get('name')
        address = request.POST.get('address')
        # 2根据id 去数据库查找对象
        publisher_obj = models.Publisher.objects.get(id=id)
        # 3修改
        publisher_obj.name = name
        publisher_obj.address = address
        publisher_obj.save()
        # 4重定向到出版社列表
        return redirect('/app01/publisher_list/')
    else:
        # 1获取id
        id = request.GET.get('id')
        # 2去数据库中查找相应的数据
        publisher_obj = models.Publisher.objects.get(id=id)
        publisher_obj_list = models.Publisher.objects.all()
        # 3返回页面
        return render(request, 'edit_publisher.html',
                      {"publisher_obj": publisher_obj, "publisher_obj_list": publisher_obj_list})

def delete_publisher(request):
    # 1获取删除图书的id
    id = request.GET.get("id")
    # 2 根据id删除数据库中的记录
    models.Publisher.objects.filter(id=id).delete()
    return redirect("/app01/publisher_list")


# 图书列表
def book_list(request):
    # 获取图书信息
    book_obj_list = models.Book.objects.all()
    # 2.将数据放到页面上
    return render(request, 'book_list.html', {"book_obj_list": book_obj_list})

def add_book(request):
    if request.method == 'POST':
        # 1获取表单提价过来的内容
        name = request.POST.get('name')
        price = request.POST.get("price")
        inventory = request.POST.get("inventory")
        sale_num = request.POST.get("sale_num")
        publisher_id = request.POST.get('publisher_id')
        # 2.保存到数据库app01_book
        models.Book.objects.create(name=name, price=price, inventory=inventory, sale_num=sale_num,
                                   publisher_id=publisher_id)
        # 3.重定向到图书列表页面
        return redirect('/app01/book_list/')
    else:
        # 1获取所有出版社
        publisher_obj_list = models.Publisher.objects.all()
        return render(request,"add_book.html",{"publisher_obj_list":publisher_obj_list})

def edit_book(request):
    if request.method == 'GET':
        # 1.获取id
        id = request.GET.get('id')
        # 2.取数据库中查找相应数据
        book_obj = models.Book.objects.filter(id=id).first()
        # 3.查找所有的出版社
        publisher_list = models.Publisher.objects.all()
        # 4 返回页面
        return render(request, 'edit_book.html',
                      {'book_obj': book_obj, 'publisher_list': publisher_list})
    else:
        # 1.获取表单提交过来的内容
        id = request.POST.get('id')
        name = request.POST.get('name')
        inventory = request.POST.get("inventory")
        price = request.POST.get("price")
        sale_num = request.POST.get("sale_num")
        publisher_id = request.POST.get('publisher_id')
        # 2.查询数据库进行更新
        models.Book.objects.filter(id=id).update(name=name, inventory=inventory, price=price,sale_num=sale_num,
                                                 publisher_id=publisher_id)
        # 3.重定向到boo_list
        return redirect("/app01/book_list")

def delete_book(request):
    # 1.获取id
    id = request.GET.get("id")
    # 2. 删除图书
    models.Book.objects.filter(id=id).delete()
    # 重定向到图书列表
    return redirect("/app01/book_list")


def author_list(request):
    ret_list = []
    author_obj_list = models.Author.objects.all()
    for author_obj in author_obj_list:
        book_obj_list = author_obj.book.all()
        ret_dic = {}
        ret_dic['author_obj'] = author_obj
        ret_dic['book_list'] = book_obj_list
        ret_list.append(ret_dic)
    return render(request, 'author_list.html', {'ret_list': ret_list})




def add_author(request):
    if request.method == 'GET':
        # 1获取所有的图书
        book_obj_list = models.Book.objects.all()
        # 2返回页面
        return render(request, 'add_author.html', {'book_obj_list': book_obj_list})
    else:
        # 1.获取表单提交过来的数据
        name = request.POST.get('name')
        book_ids = request.POST.getlist('books')
        # 2 保存数据库
        author_obj = models.Author.objects.create(name=name)  # 创建对象
        author_obj.book.set(book_ids)  # 设置关系
        # 3 重定向到列表页面
        return redirect('/app01/author_list/')


# 修改作者
def edit_author(request):
    if request.method == 'GET':
        # 1.获取id
        id = request.GET.get('id')
        # 2查询对象和所有的图书
        author_obj = models.Author.objects.get(id=id)
        book_obj_list = models.Book.objects.all()
        # 3返回页面
        return render(request, 'edit_author.html',
                      {'author_obj': author_obj, 'book_obj_list': book_obj_list})
    else:
        # 保存修改的数据
        # 1.获取表单提交过来的内容
        id = request.POST.get('id')
        name = request.POST.get('name')
        book_ids = request.POST.getlist('books')
        # 2,根据id 查找对象，并修改
        author_obj = models.Author.objects.filter(id=id).first()
        author_obj.name = name
        author_obj.book.set(book_ids)
        author_obj.save()
        # 3.重定向到作者列表
        return redirect('/app01/author_list/')

def delete_author(request):
    # 1 获取id
    id = request.GET.get("id")
    # 2删除作者
    models.Author.objects.filter(id=id).delete()
    # 重定向作者列表
    return redirect("/app01/author_list")