from www.models import Video
from rest_framework import serializers

class VideoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Video
        fields = ('title', 'click_num', 'comment_num', 'thumbnail_src', 'summary', 'video_src', 'timestamp')