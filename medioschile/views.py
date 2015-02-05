from django.http import HttpResponse
from django.template import RequestContext, loader
from medioschile.models import Ejecutivo,Empresario,GeneroEscrito,Region,Comuna,Ciudad,Sector,Periodicidad,Propietario,TipoSociedad,PaisSociedad,Sociedad,Escrito,GeneroRadio,Radio,GeneroCanalTV,CanalTV,GeneroMedioDigital,MedioDigital,Autor,Fuente,TipoDocumento,Regulacion

def index(request):
    escrito_list = Escrito.objects.order_by('-propietario')[:5]
    template = loader.get_template('medioschile/index.html')
    context = RequestContext(request, {
        'escrito_list': escrito_list,
    })
    return HttpResponse(template.render(context))