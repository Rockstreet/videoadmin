from django.contrib import admin
from django_mptt_admin.admin import DjangoMpttAdmin
from .models import Video_objects, Video_cameras
import nested_admin

class Video_objectsAdmin(DjangoMpttAdmin):
    exclude = ('num',)


admin.site.register(Video_objects, Video_objectsAdmin)



class Video_camerasAdmin(nested_admin.NestedModelAdmin):
    filter_horizontal = ('category',)
    search_fields = ['title']


admin.site.register(Video_cameras, Video_camerasAdmin)