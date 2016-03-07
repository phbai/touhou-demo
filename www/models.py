from django.db import models
from django.contrib import admin

# Create your models here.
class Video(models.Model):
	title = models.CharField(max_length=255)
	click_num = models.IntegerField()
	comment_num = models.IntegerField()
	thumbnail_src = models.CharField(max_length=255)
	summary = models.CharField(max_length=255)
	video_src = models.CharField(max_length=255)
	timestamp = models.DateTimeField()	

	def __unicode__(self):
		return self.title

class Character(models.Model):
	name = models.CharField(max_length=255)
	description = models.TextField()
	click_num = models.IntegerField()
	comment_num = models.IntegerField()
	speed = models.IntegerField()
	attackRange = models.IntegerField()
	attack = models.IntegerField()	
	jiecao = models.IntegerField()
	cup = models.IntegerField()
	character_sub_title = models.CharField(max_length=255)
	video_sub_title = models.CharField(max_length=255)
	avatar_src = models.CharField(max_length=255)
	thumbnail_src = models.CharField(max_length=255)
	videos = models.ManyToManyField(Video)
	# summary = models.CharField(max_length=255)
	timestamp = models.DateTimeField()

	def __unicode__(self):
		return self.name


class VideoAdmin(admin.ModelAdmin):
	list_display = ('title', 'summary', 'timestamp')

class CharacterAdmin(admin.ModelAdmin):
	list_display = ('name', 'description', 'timestamp')

admin.site.register(Video, VideoAdmin)
admin.site.register(Character, CharacterAdmin)
