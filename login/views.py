from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib import messages

def login_app(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('carga_datos')
        else:
            messages.error(request, "Credenciales incorrectas. Intente nuevamente...")
            return redirect('login')  # Redirige de vuelta a la página de inicio de sesión
    else:
        return render(request, 'login.html')

    