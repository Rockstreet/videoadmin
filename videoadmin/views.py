from django.conf.urls import url

from django.views import generic

from .models import Video_objects, Video_cameras, UserProfileObjects

from django.contrib.auth.models import User


from . import views


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