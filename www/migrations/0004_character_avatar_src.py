# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('www', '0003_auto_20150925_2348'),
    ]

    operations = [
        migrations.AddField(
            model_name='character',
            name='avatar_src',
            field=models.CharField(default='hello', max_length=255),
            preserve_default=False,
        ),
    ]
