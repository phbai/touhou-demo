# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('www', '0004_character_avatar_src'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='video',
            name='character',
        ),
        migrations.AddField(
            model_name='video',
            name='characters',
            field=models.ManyToManyField(to='www.Character'),
        ),
    ]
