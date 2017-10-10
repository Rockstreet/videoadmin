from django.conf.urls import url

from django.views import generic

from .models import Video_objects, Video_cameras


from . import views


class ListViewBase(generic.ListView):
    model= Video_objects


class DetailView(generic.DetailView):
    model = Video_objects