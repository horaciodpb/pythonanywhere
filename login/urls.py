from django.urls import path
from . import views
# URLConfig
urlpatterns = [
    path('login_app/', views.login_app, name="login")
]
