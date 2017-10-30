"""videoadmin URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^accounts/profile/', views.ListViewBase.as_view(), name='index'),
    url(r'^accounts/', include('registration.backends.simple.urls')),

    url(r'^$', views.ListViewBase.as_view(), name='index'),



    url(r'^cameras/(?P<pk>[-\w]+)/$', views.DetailView.as_view(), name='cameras'),
    url(r'^camera/(?P<pk>[-\w]+)/$', views.DetailCameraView.as_view(), name='camera'),
    url(r'^generate_users/', views.GenerateUsers.as_view(), name='generate_users'),
    url(r'^contact', views.Contact.as_view(), name='contact')

]


if settings.DEBUG:
    if settings.MEDIA_ROOT:
        urlpatterns += static(settings.MEDIA_URL,
            document_root=settings.MEDIA_ROOT)
