# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-31 13:34
from __future__ import unicode_literals

from django.db import migrations
import django.db.models.deletion
import mptt.fields


class Migration(migrations.Migration):

    dependencies = [
        ('videoadmin', '0007_remove_video_objects_parent'),
    ]

    operations = [
        migrations.AddField(
            model_name='video_objects',
            name='parent',
            field=mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='videoadmin.Video_objects', verbose_name='Родительский элемент'),
        ),
    ]
