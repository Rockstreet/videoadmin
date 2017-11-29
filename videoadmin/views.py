from django.conf.urls import url

from django.views import generic

from .models import Video_objects, Video_cameras, UserProfileObjects

from django.contrib.auth.models import User


from . import views

import random, string


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
	
class Arhive(generic.TemplateView):
	template_name = 'videoadmin/arhive.html'


class ArhiveView(generic.DetailView):
    model = Video_cameras
    template_name = 'videoadmin/camera_arhive.html'


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
