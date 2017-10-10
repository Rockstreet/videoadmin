from django.contrib import admin
from django_mptt_admin.admin import DjangoMpttAdmin
from .models import Video_objects, Video_cameras, UserProfileObjects
import nested_admin


from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


admin.site.unregister(User)
class UserProfileInline(admin.StackedInline):
    model = UserProfileObjects
    filter_horizontal = ('video_objects',)

class UserProfileAdmin(UserAdmin):
    save_on_top = True
    list_display = ('username', 'email', 'first_name', 'last_name', 'is_staff', 'last_login')
    inlines = [UserProfileInline]
admin.site.register(User, UserProfileAdmin)



class Video_objectsAdmin(admin.ModelAdmin):
    model = Video_objects
    exclude = ('num',)



admin.site.register(Video_objects, Video_objectsAdmin)



class Video_camerasAdmin(nested_admin.NestedModelAdmin):
    filter_horizontal = ('category',)
    search_fields = ['title']



admin.site.register(Video_cameras, Video_camerasAdmin)