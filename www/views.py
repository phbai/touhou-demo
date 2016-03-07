from django.shortcuts import render
from django.shortcuts import render_to_response
from www.models import Character
from www.models import Video
from django.http import Http404
from rest_framework import viewsets
from touhou.serializers import VideoSerializer

# Create your views here.
class VideoViewSet(viewsets.ModelViewSet):
    queryset = Video.objects.all()
    serializer_class = VideoSerializer

def index(request):
	characters = Character.objects.all()
	return render_to_response('index.html', locals())

def video(request, id):
	try:
		video = Video.objects.get(id=id)	
	except Video.DoesNotExist:
		raise Http404("404")
	return render_to_response('video.html', locals())

def character(request, name):
	try:
		character = Character.objects.get(name=name)
	except Character.DoesNotExist:
		raise Http404("404")
	return render_to_response('character.html', locals())


		
