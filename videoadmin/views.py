from django.conf.urls import url

from django.views import generic

from .models import Video_objects, Video_cameras, UserProfileObjects

from django.contrib.auth.models import User

from django.views.generic import View

from . import views

import random, string


from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.core.mail import send_mail


class ListViewBase(generic.ListView):
    model= Video_objects

    def get_context_data(self, **kwargs):

        context = super(ListViewBase, self).get_context_data(**kwargs)

        context['userobjects']=UserProfileObjects.objects.filter(user=self.request.user.id).all

        print(context['userobjects'])


        return context


class DetailView(generic.DetailView):
    model = Video_objects


    def get_context_data(self, **kwargs):

        context = super(DetailView, self).get_context_data(**kwargs)

        print(context['object'].pk)

        context['arr_cam'] = Video_cameras.objects.filter(category=context['object'].pk).all


        return context

class DetailCameraView(generic.DetailView):
    model = Video_cameras


class Contact(generic.TemplateView):
	template_name = 'videoadmin/contact.html'

class GoodSend(generic.TemplateView):
	template_name = 'videoadmin/good_send.html'
	
class Arhive(generic.TemplateView):
	template_name = 'videoadmin/arhive.html'


class ArhiveView(generic.DetailView):
    model = Video_cameras
    template_name = 'videoadmin/camera_arhive.html'


class Sign_in(generic.TemplateView):
    model = Video_cameras
    template_name = 'videoadmin/sign_in.html'


class SendMailCls(View):
    def post(self,request):

        name = request.POST.get('name')
        phone = request.POST.get('phone')
        mail = request.POST.get('mail')
        orgname = request.POST.get('orgname')
        inn = request.POST.get('inn')
        orgn = request.POST.get('orgn')
        camera_cols = request.POST.get('camera_cols')
        internet = request.POST.get('internet')




        send_message = '<h2>Сообщение с сайта OKO36 </h2>'
        send_message = send_message+'<b>Имя:</b> '+name+'<br><br>'
        send_message = send_message+'<b>Телефон:</b> '+phone+'<br><br>'
        send_message = send_message+'<b>E-mail:</b> '+mail+'<br><br>'
        send_message = send_message+'<b>Организация:</b> '+orgname+'<br>'
        send_message = send_message+'<b>ИНН:</b> '+inn+'<br>'
        send_message = send_message+'<b>ОРГН:</b> '+orgn+'<br>'
        send_message = send_message+'<b>Колличество камер:</b> '+camera_cols+'<br>'
        send_message = send_message+'<b>Наличие интернета:</b> '+internet+'<br>'
        send_mail('Письмо с сайта OKO36', send_message, 'sendfromsite@caimanfishing.ru', ['ivan.tolkachev@gmail.com'], fail_silently=False, auth_user=None, auth_password=None, connection=None, html_message=send_message)

        return HttpResponseRedirect('/good_send')


class GenerateUsers(generic.TemplateView):

    template_name = 'videoadmin/generate_users.html'

    def random_id(length=8, strong=False):
        rid = ''
        for x in range(length):
            rid += random.choice(('!@#$%^&*()_-+=' if strong else '') + string.ascii_letters + string.digits)
        return rid


    def get_context_data(self, **kwargs):
        context = super(GenerateUsers, self).get_context_data(**kwargs)

        f = open('./static/files/green.csv')

        file_mas=[]

        for line  in f:

            rid = ''

            for x in range(8):
                rid += random.choice(('!@#$%^&*()_-+=' if 0 else '') + string.ascii_letters + string.digits)

            uname=str(line).strip();

            file_mas.append(str(line).strip()+" "+str(rid))
            usern = str(line).strip()
            passw = str(rid)
           
            #user = User.objects.create(username=usern)
            #user.set_password(passw)
            #user.save()
            #profile = UserProfileObjects.objects.create(user=User.objects.filter(username=usern).first())
            #profile.video_objects.add(Video_objects.objects.filter(id=5).first().pk)
            #profile.save()


        context['file_mas']=file_mas

        context['user']='Пользователи'

        return context
