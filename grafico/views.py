from django.shortcuts import render
from django.http import JsonResponse
from .models import Candidatos, Mesas, Escrutinio
from django.db import models
import json

# Create your views here.
def grafico(request):
    return render(request, 'grafico.html')

def generar_grafico(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        circuito = data.get('circuito')
        candidatos = Candidatos.objects.all()
        datos = []
        labels = []
        if circuito == "Todos los circuitos":
            for candidato in candidatos:
                votos_totales = Escrutinio.objects.filter(id_cand=candidato.id_cand).aggregate(models.Sum('votos'))
                votos_totales = votos_totales['votos__sum'] or 0
                datos.append(votos_totales)
                labels.append(candidato.candidato_nombre)
            data = {
                "labels": labels,
                "datos": datos,
            }
            return JsonResponse(data)
        else:
            for candidato in candidatos:
                #votos_totales = Escrutinio.objects.filter(id_cand=candidato.id_cand, mesa__circuito=circuito).aggregate(models.Sum('votos'))
                votos_totales = Escrutinio.objects.filter(id_cand=candidato.id_cand, mesa__circuito__exact=circuito).aggregate(models.Sum('votos'))
                votos_totales = votos_totales['votos__sum'] or 0
                datos.append(votos_totales)
                labels.append(candidato.candidato_nombre)
            data = {
                "labels": labels,
                "datos": datos,
            }
            return JsonResponse(data)
    else:
        return render(request, 'grafico/grafico.html')