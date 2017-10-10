from django.db import models
from django.utils.translation import ugettext_lazy as _, ugettext
from mptt.models import MPTTModel, TreeForeignKey
from django.contrib.auth.models import User

from sorl.thumbnail import ImageField

class Video_objects(models.Model):
    created_date = models.DateTimeField(_("Дата создания"), auto_now_add=True, editable=False)
    edited_date = models.DateTimeField(_("Дата редактирования"), auto_now=True, editable=False, null=True)
    title = models.CharField(_("Название"), max_length=1000, default='')
    meta_description = models.CharField(_("Описание"), max_length=1000, blank=True)
    file = ImageField(_("Обложка 250X250"), upload_to='video_objects', blank=True)


    def __str__(self):
        return self.title

    class Meta:
        verbose_name = _("Объекты")
        verbose_name_plural = _("Объекты")
        ordering = ['title', ]



class Video_cameras(models.Model):
    title = models.CharField(_("Название"), max_length=1000, default='')
    camera_description = models.CharField(_("Описание"), max_length=1000, blank=True)
    server_ip = models.CharField(_("IP сервера"), max_length=1000, blank=True)
    server_login = models.CharField(_("Логин сервера"), max_length=1000, blank=True)
    server_pass = models.CharField(_("Пароль сервера"), max_length=1000, blank=True)
    camera_id = models.CharField(_("Id камеры"), max_length=1000, blank=True)

    file = ImageField(_("Обложка 250X250"), upload_to='video_cameras', blank=True)
    num = models.IntegerField(_("Порядковый номер"), default=0, blank=True, db_index=True)
    category = models.ManyToManyField(Video_objects, verbose_name=u'Объект')

    def __str__(self):
        return self.title


    class Meta:
        verbose_name = _("Камера")
        verbose_name_plural = _("Камеры")
        ordering = ['num', 'title', ]


class UserProfileObjects(models.Model):
    user = models.OneToOneField(User, related_name='related_name_user', default=2)
    video_objects=models.ManyToManyField(Video_objects, verbose_name=u'Объект')

    class Meta:
        verbose_name = _("Объекты")
        verbose_name_plural = _("Объекты пользователя")
