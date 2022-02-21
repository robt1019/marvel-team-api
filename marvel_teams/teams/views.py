from django.contrib.auth.models import User, Group
from marvel_teams.teams.serializers import GroupSerializer, UserSerializer
from rest_framework.response import Response 
from rest_framework.decorators import api_view

@api_view(['GET'])
def users(request):
    if request.method == 'GET':
        users = User.objects.all()
        serializer = UserSerializer(users)
        return Response(serializer.data)