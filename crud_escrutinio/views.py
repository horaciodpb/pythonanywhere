from django.shortcuts import render
from .models import Escrutinio, Mesas, Candidatos

# Create your views here.
def crud_escrutinio(request):
    return render(request, 'crud_escrutinio.html')
def crearRegistro(request):
    id_registro_votos=request.POST['numRegistro']
    mesa=request.POST['numMesa']
    mesa_a_cargar = Mesas.objects.get(mesa=mesa)
    candidato=request.POST['numCandidato']
    cand_a_cargar=Candidatos.objects.get(id_cand=candidato)
    votos=request.POST['numVotos']
    Escrutinio.objects.create(id_registro_votos=id_registro_votos, mesa=mesa_a_cargar, id_cand=cand_a_cargar, votos=votos)
    obj_mesas = Escrutinio.objects.all()
    return render(request, 'crud_escrutinio.html')#, {"obj_mesas":obj_mesas})
def eliminarRegistro(request, id_registro_votos):
    coso = Escrutinio.objects.get(id_registro_votos=id_registro_votos)
    coso.delete()
    #obj_mesas = Escrutinio.objects.all()
    return render(request, 'crud_escrutinio.html')#, {"obj_mesas":obj_mesas})

def buscar_mesa(request):
    if request.method == 'POST':
        num_mesa = request.POST.get('numSrcMesa')
        registros = Escrutinio.objects.filter(mesa=num_mesa)
        return render(request, 'crud_escrutinio.html', {'obj_mesas': registros})
    else:
        return render(request, 'crud_escrutinio.html')