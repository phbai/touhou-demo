# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('www', '0005_auto_20150930_1122'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='video',
            name='characters',
        ),
        migrations.AddField(
            model_name='character',
            name='videos',
            field=models.ManyToManyField(to='www.Video'),
        ),
    ]
