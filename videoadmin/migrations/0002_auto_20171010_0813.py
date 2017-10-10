# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-10 08:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('videoadmin', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='video_cameras',
            name='server_login',
            field=models.CharField(blank=True, max_length=1000, verbose_name='Логин сервера'),
        ),
        migrations.AddField(
            model_name='video_cameras',
            name='server_pass',
            field=models.CharField(blank=True, max_length=1000, verbose_name='Пароль сервера'),
        ),
    ]
