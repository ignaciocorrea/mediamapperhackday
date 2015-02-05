# -*- encoding: utf-8 -*-
from django.contrib import admin
from medioscolombia.models import Ejecutivo,Empresario,GeneroEscrito,Region,Ciudad,Sector,Periodicidad,Propietario,TipoSociedad,PaisSociedad,Sociedad,Escrito,GeneroRadio,Radio,GeneroCanalTV,CanalTV,GeneroMedioDigital,MedioDigital,Autor,Fuente,TipoDocumento,Regulacion

class ListaEjecutivos(admin.ModelAdmin):
    search_fields = ['ejecutivo']

class ListaEmpresarios(admin.ModelAdmin):
    search_fields = ['empresario']

class ListaRegiones(admin.ModelAdmin):
    search_fields = ['region']

class ListaCiudades(admin.ModelAdmin):
    search_fields = ['ciudad']

class ListaSociedades(admin.ModelAdmin):
    search_fields = ['sociedad']
    list_display = ('sociedad','tiposociedad','presidentedirectorio','representantelegal','sociedadcontroladora','pcentsociedadcontroladora')
    fieldsets = (
        ('Datos de Sociedad', {
            'fields': (('sociedad','tiposociedad'),('rutsociedad','paissocio'),('presidentedirectorio','representantelegal'),'miembrosdirectorio','sectores'),
        }),
        ('Sociedades Propietarias -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': (('sociedadcontroladora','pcentsociedadcontroladora'),('otrasociedada','pcentsociedada'),('otrasociedadb','pcentsociedadb'),('otrasociedadc','pcentsociedadc'),('otrasociedadd','pcentsociedadd'),('otrasociedade','pcentsociedade'),'fuentesociedad'),
        }),
        ('Utilidades -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('utilidades','infoutilidades','fuenteutilidades'),
        }),
    )

class ListaPropietarios(admin.ModelAdmin):
    search_fields = ['propietario']
    list_display = ('propietario','presidentedirectorio','sociedadcontroladora','pcentsociedadcontroladora')
    fieldsets = (
        ('Datos de Propietario', {
            'fields': (('propietario','tiposociedad'),'rutpropietario',('presidentedirectorio','representantelegal'),'miembrosdirectorio','sectores'),
        }),
        ('Sociedades Propietarias -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': (('sociedadcontroladora','pcentsociedadcontroladora'),('otrasociedada','pcentsociedada'),('otrasociedadb','pcentsociedadb'),('otrasociedadc','pcentsociedadc'),('otrasociedadd','pcentsociedadd'),('otrasociedade','pcentsociedade'),'fuentepropietario'),
        }),
        ('Utilidades -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('utilidades','infoutilidades','fuenteutilidades'),
        }),
    )

class MedioEscritoAdmin(admin.ModelAdmin):
    list_display = ('medio','tipo','genero','periodicidad','inicioyear','circulacion','director','sitioweb','observaciones','check')
    search_fields = ['medio']
    fieldsets = (
        ('Datos del Medio', {
            'fields': ('medio',('tipo','pagado_gratuito','genero'),('inicio','inicioyear','periodicidad',),('direccion','sitioweb'),('director','gerentegeneral'),'propietario','fuentepropiedad'),
        }),
        ('Datos de Circulación -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('circulacion','region','ciudad'),
        }),
        ('Medio Asociado a -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('asociadoaescrito','asociadoaradio','asociadoacanaltv','asociadoamediodigital'),
        }),
        ('Datos de Lectoría y Tiraje -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('lectoria','infolectoria','fuentelectoria','tiraje','infotiraje','fuentetiraje'),
        }),
        ('Extra -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('telefono','observaciones','anexos','check'),
        }),
    )
    
class RadiosAdmin(admin.ModelAdmin):
    list_display = ('medio','frecuencia','genero','inicioyear','indiceaudiencia','director','sitioweb','observaciones','check')
    search_fields = ['medio']
    fieldsets = (
        ('Datos del Medio', {
            'fields': ('medio',('genero','frecuencia'),('inicio','inicioyear'),('direccion','sitioweb'),('director','gerentegeneral'),'propietario','fuentepropiedad'),
        }),
        ('Datos de Cobertura -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('cobertura','region','ciudad'),
        }),
        ('Medio Asociado a -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('asociadoaescrito','asociadoaradio','asociadoacanaltv','asociadoamediodigital'),
        }),
        ('Datos de Audiencia -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('indiceaudiencia','infoaudiencia','fuenteaudiencia'),
        }),
        ('Extra -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('telefono','observaciones','anexos','check'),
        }),
    )

class CanalesTVAdmin(admin.ModelAdmin):
    list_display = ('medio','tipo','genero','inicioyear','rating','director','sitioweb','observaciones','check')
    search_fields = ['medio']
    fieldsets = (
        ('Datos del Medio', {
            'fields': ('medio',('tipo','genero'),('inicio','inicioyear'),('direccion','sitioweb'),('director','gerentegeneral'),'propietario','fuentepropiedad'),
        }),
        ('Datos Cobertura -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('cobertura','region','ciudad'),
        }),
        ('Medio Asociado a -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('asociadoaescrito','asociadoaradio','asociadoacanaltv','asociadoamediodigital'),
        }),
        ('Datos de Rating -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('rating','inforating','fuenterating'),
        }),
        ('Extra -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('telefono','observaciones','anexos','check'),
        }),
    )

class MediosDigitalesAdmin(admin.ModelAdmin):
    list_display = ('medio','nativoasociado','genero','inicioyear','visitaspaginasvistas','visitasunicas','director','sitioweb','observaciones','check')
    search_fields = ['medio']
    fieldsets = (
        ('Datos del Medio', {
            'fields': (('medio','sitioweb'),('genero','nativoasociado'),('inicio','inicioyear'),'direccion',('director','gerentegeneral'),'propietario','fuentepropiedad'),
        }),
        ('Datos de Cobertura -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('cobertura','region','ciudad'),
        }),
        ('Datos de Visitas -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('visitaspaginasvistas','visitasunicas','infovisitas','fuentevisitas'),
        }),
        ('Medio Asociado a -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('asociadoaescrito','asociadoaradio','asociadoacanaltv','asociadoamediodigital'),
        }),
        ('Extra -click para abrir-', {
            'classes': ('grp-collapse grp-closed',),
            'fields': ('telefono','observaciones','anexos','check'),
        }),
    )

class ListaFuentes(admin.ModelAdmin):
    list_display = ('fuente','linkfuente')
    search_fields = ['fuente']

class ListaAutores(admin.ModelAdmin):
    list_display = ('autor','datosautor')
    search_fields = ['autor']

class DocumentosAdmin(admin.ModelAdmin):
    list_display = ('documento','tipodocumento','descripciondocumento','linkdocumento')
    search_fields = ['documento']

admin.site.register(Ejecutivo,ListaEjecutivos)
admin.site.register(Empresario,ListaEmpresarios)
admin.site.register(GeneroEscrito)
admin.site.register(Region,ListaRegiones)
admin.site.register(Ciudad,ListaCiudades)
admin.site.register(Sector)
admin.site.register(Periodicidad)
admin.site.register(Propietario,ListaPropietarios)
admin.site.register(TipoSociedad)
admin.site.register(PaisSociedad)
admin.site.register(Sociedad,ListaSociedades)
admin.site.register(Escrito,MedioEscritoAdmin)
admin.site.register(GeneroRadio)
admin.site.register(Radio,RadiosAdmin)
admin.site.register(GeneroCanalTV)
admin.site.register(CanalTV,CanalesTVAdmin)
admin.site.register(GeneroMedioDigital)
admin.site.register(MedioDigital,MediosDigitalesAdmin)
admin.site.register(Fuente,ListaFuentes)
admin.site.register(Autor,ListaAutores)
admin.site.register(TipoDocumento)
admin.site.register(Regulacion,DocumentosAdmin)