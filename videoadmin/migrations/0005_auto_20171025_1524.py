# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-25 15:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('videoadmin', '0004_userprofileobjects_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofileobjects',
            name='video_objects',
            field=models.ManyToManyField(blank=True, to='videoadmin.Video_objects', verbose_name='Объект'),
        ),
    ]
