

from django.urls import path

from marvel_teams.teams.views import users


urlpatterns = [
    path('users', users)
]