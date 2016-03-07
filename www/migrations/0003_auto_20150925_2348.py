# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('www', '0002_auto_20150924_2216'),
    ]

    operations = [
        migrations.AddField(
            model_name='character',
            name='character_sub_title',
            field=models.CharField(default='\u7075\u68a6', max_length=255),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='character',
            name='video_sub_title',
            field=models.CharField(default='\u7075\u68a62', max_length=255),
            preserve_default=False,
        ),
    ]
