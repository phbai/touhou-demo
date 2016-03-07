# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Character',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('click_num', models.IntegerField()),
                ('comment_num', models.IntegerField()),
                ('thumbnail_src', models.CharField(max_length=255)),
                ('timestamp', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=255)),
                ('click_num', models.IntegerField()),
                ('comment_num', models.IntegerField()),
                ('thumbnail_src', models.CharField(max_length=255)),
                ('summary', models.CharField(max_length=255)),
                ('timestamp', models.DateTimeField()),
                ('character', models.ForeignKey(to='www.Character')),
            ],
        ),
    ]
