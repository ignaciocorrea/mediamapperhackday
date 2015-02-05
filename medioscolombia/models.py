# -*- encoding: utf-8 -*-
from django.db import models
import select2.fields
import select2.models
import datetime
YEAR_CHOICES = []
for r in range(1800, (datetime.datetime.now().year+1)):
    YEAR_CHOICES.append((r,r))

class Ejecutivo(models.Model):
	class Meta:
			verbose_name = 'Ejecutivo de Medio'
			verbose_name_plural = 'Ejecutivos de Medios'
	ejecutivo = models.CharField("Ejecutivo", max_length=255, unique=True)
	def __unicode__(self):
		return self.ejecutivo

class Empresario(models.Model):
	class Meta:
			verbose_name = 'Miembro Directorio'
			verbose_name_plural = 'Miembros de Directorios'
	empresario = models.CharField("Miembro de Directorio", max_length=255, unique=True)
	def __unicode__(self):
		return self.empresario

class GeneroEscrito(models.Model):
	class Meta:
			verbose_name = 'Género Medio Escrito'
			verbose_name_plural = 'Géneros Medios Escritos'
	genero = models.CharField("Género", max_length=255, unique=True)
	def __unicode__(self):
		return self.genero

class Region(models.Model):
	class Meta:
			verbose_name = 'Departamento'
			verbose_name_plural = 'Departamentos'
	region = models.CharField("Departamento", max_length=255, unique=True)
	def __unicode__(self):
		return self.region

class Ciudad(models.Model):
	class Meta:
			verbose_name = 'Municipio'
			verbose_name_plural = 'Municipios'
	ciudad = models.CharField("Municipio", max_length=255, unique=True)
	def __unicode__(self):
		return self.ciudad

class Sector(models.Model):
	class Meta:
			verbose_name = 'Sector de Actividad Socio'
			verbose_name_plural = 'Sectores de Actividad Socios'
	sector = models.CharField("Sector de Actividad Socios", max_length=255, unique=True)
	def __unicode__(self):
		return self.sector

class Periodicidad(models.Model):
	class Meta:
			verbose_name = 'Periodicidad'
			verbose_name_plural = 'Periodicidades'
	periodicidad = models.CharField("Periodicidad", max_length=255, unique=True)
	def __unicode__(self):
		return self.periodicidad

class TipoSociedad(models.Model):
	class Meta:
			verbose_name = 'Tipo Sociedad'
			verbose_name_plural = 'Tipos de Sociedades'
	tiposociedad = models.CharField("Tipo Sociedad", max_length=255, unique=True)
	def __unicode__(self):
		return self.tiposociedad

class PaisSociedad(models.Model):
	class Meta:
			verbose_name = 'País'
			verbose_name_plural = 'Paises'
	paissociedad = models.CharField("Pais", max_length=255, unique=True)
	def __unicode__(self):
		return self.paissociedad

class Autor(models.Model):
	class Meta:
			verbose_name = 'Autor'
			verbose_name_plural = 'Autores'
	autor = models.CharField("Autor", max_length=255, unique=True)
	def __unicode__(self):
		return self.autor
	datosautor = models.CharField("Datos Autor", max_length=255, null=True, blank=True)

class Fuente(models.Model):
	class Meta:
			verbose_name = 'Fuente'
			verbose_name_plural = 'Fuentes'
	fuente = models.CharField("Fuente", max_length=255, unique=True)
	def __unicode__(self):
		return self.fuente
	descripcionfuente = models.TextField("Descripción", null=True, blank=True)
	autor = select2.fields.ManyToManyField(Autor, verbose_name="Autor/es", null=True, blank=True, help_text="Actualice con F5")
	linkfuente = models.URLField("Link", null=True, blank=True, help_text="http://...")

class Sociedad(models.Model):
	class Meta:
			verbose_name = 'Socio'
			verbose_name_plural = 'Socios'
	sociedad = models.CharField("Socio", max_length=255, unique=True)
	def __unicode__(self):
		return self.sociedad
	rutsociedad = models.CharField("D.N.I.", max_length=255, null=True, blank=True)
	tiposociedad = models.ForeignKey(TipoSociedad, verbose_name="Tipo de Sociedad", related_name="sociedad_tiposociedad", null=True, blank=True)
	paissocio = models.ForeignKey(PaisSociedad, verbose_name="País de origen", null=True, blank=True)
	presidentedirectorio = models.ForeignKey(Empresario, related_name="sociedad_presidentedirectorio", verbose_name="Presidente Directorio", null=True, blank=True)
	miembrosdirectorio = select2.fields.ManyToManyField(Empresario, related_name="sociedad_miembrosdirectorio", verbose_name="Miembros Directorio", null=True, blank=True, help_text="Actualice con F5")
	representantelegal = models.ForeignKey(Ejecutivo, verbose_name="Representante Legal", max_length=255, null=True, blank=True)
	utilidades = models.IntegerField("Utilidades -último año-", null=True, blank=True)
	infoutilidades = models.CharField("Información Utilidades", max_length=255, null=True, blank=True)
	fuenteutilidades = models.ForeignKey(Fuente, related_name="fuente_utilidades_sociedad", verbose_name="Fuente", null=True, blank=True, max_length=255)
	sectores = select2.fields.ManyToManyField(Sector, verbose_name="Sectores de Actividad", null=True, blank=True, help_text="Actualice con F5")
	sociedadcontroladora = models.ForeignKey('self', related_name="sociedad_controladora_sociedad", verbose_name="Socio Controlador", max_length=255, null=True, blank=True)
	pcentsociedadcontroladora = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedada = models.ForeignKey('self', related_name="sociedad_a_sociedad", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedada = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedadb = models.ForeignKey('self', related_name="sociedad_b_sociedad", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedadb = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedadc = models.ForeignKey('self', related_name="sociedad_c_sociedad", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedadc = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedadd = models.ForeignKey('self', related_name="sociedad_d_sociedad", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedadd = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedade = models.ForeignKey('self', related_name="sociedad_e_sociedad", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedade = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	fuentesociedad = models.ForeignKey(Fuente, verbose_name="Fuente", null=True, blank=True, max_length=255)

class Propietario(models.Model):
	class Meta:
			verbose_name = 'Empresa Controladora'
			verbose_name_plural = 'Empresas Controladoras'
	propietario = models.CharField("Empresa Controladora", max_length=255, unique=True)
	def __unicode__(self):
		return self.propietario
	rutpropietario = models.CharField("D.N.I.", max_length=255, null=True, blank=True)
	tiposociedad = models.ForeignKey(TipoSociedad, verbose_name="Tipo de Sociedad", related_name="propietario_tiposociedad", null=True, blank=True)
	presidentedirectorio = models.ForeignKey(Empresario, related_name="propietario_presidentedirectorio", verbose_name="Presidente Directorio", null=True, blank=True)
	miembrosdirectorio = select2.fields.ManyToManyField(Empresario, related_name="propietario_miembrosdirectorio", verbose_name="Miembros Directorio", null=True, blank=True, help_text="Actualice con F5")
	representantelegal = models.ForeignKey(Ejecutivo, verbose_name="Representante Legal", max_length=255, null=True, blank=True)
	utilidades = models.IntegerField("Utilidades -último año-", null=True, blank=True)
	infoutilidades = models.CharField("Información Utilidades", max_length=255, null=True, blank=True)
	fuenteutilidades = models.ForeignKey(Fuente, related_name="fuente_utilidades_propietario", verbose_name="Fuente", null=True, blank=True, max_length=255)
	sectores = select2.fields.ManyToManyField(Sector, verbose_name="Sectores de Actividad Socio", null=True, blank=True, help_text="Actualice con F5")
	sociedadcontroladora = models.ForeignKey(Sociedad, related_name="sociedad_controladora_propietario", verbose_name="Socio Controlador", max_length=255, null=True, blank=True)
	pcentsociedadcontroladora = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedada = models.ForeignKey(Sociedad, related_name="sociedad_a_propietario", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedada = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedadb = models.ForeignKey(Sociedad, related_name="sociedad_b_propietario", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedadb = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedadc = models.ForeignKey(Sociedad, related_name="sociedad_c_propietario", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedadc = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedadd = models.ForeignKey(Sociedad, related_name="sociedad_d_propietario", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedadd = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	otrasociedade = models.ForeignKey(Sociedad, related_name="sociedad_e_propietario", verbose_name="Socio Minoritario", max_length=255, null=True, blank=True)
	pcentsociedade = models.CharField("Porcentaje", null=True, blank=True, max_length=100)
	fuentepropietario = models.ForeignKey(Fuente, verbose_name="Fuente", null=True, blank=True, max_length=255)

class Escrito(models.Model):
	class Meta:
			verbose_name = 'Medio Escrito'
			verbose_name_plural = 'Medios Escritos'
	TIPO_MEDIO = (
		('Diario', 'Diario'),
		('Revista', 'Revista'),
		('Agencia', 'Agencia'),
		)
	tipo = models.CharField("Tipo", max_length=100, null=True, blank=True, choices=TIPO_MEDIO)
	medio = models.CharField("Nombre", max_length=255, unique=True)
	def __unicode__(self):
		return self.medio
	asociadoaescrito = models.ForeignKey('self', related_name="escrito_asociadoaescrito", verbose_name="Asociado a Medio Escrito", null=True, blank=True)
	asociadoaradio = models.ForeignKey('Radio', related_name="escrito_asociadoaradio", verbose_name="Asociado a Radio", null=True, blank=True)
	asociadoacanaltv = models.ForeignKey('CanalTV', related_name="escrito_asociadoacanaltv", verbose_name="Asociado a Canal de TV", null=True, blank=True)
	asociadoamediodigital = models.ForeignKey('MedioDigital', related_name="escrito_asociadoamediodigital", verbose_name="Asociado a Medio Digital", null=True, blank=True)
	genero = models.ForeignKey(GeneroEscrito, null=True, blank=True)
	PAGADO_GRATUITO = (
		('Pagado', 'Pagado'),
		('Gratuito', 'Gratuito'),
		)
	pagado_gratuito = models.CharField("Pagado o Gratuito", max_length=100, null=True, blank=True, choices=PAGADO_GRATUITO)
	inicio = models.DateField("Fecha Fundación", null=True, blank=True)
	inicioyear = models.IntegerField(('Año Fundación'), max_length=4, choices=YEAR_CHOICES, default=datetime.datetime.now().year, null=True, blank=True)
	CIRCULACION = (
		('Nacional', 'Nacional'),
		('Regional', 'Regional'),
		('Departamental', 'Departamental'),
		('Municipal', 'Municipal'),
		('Local', 'Local'),
		)
	circulacion = models.CharField("Circulación", max_length=100, null=True, blank=True, choices=CIRCULACION)
	region = select2.fields.ManyToManyField(Region, verbose_name="Departamento", null=True, blank=True, help_text="Actualice con F5")
	ciudad = select2.fields.ManyToManyField(Ciudad, verbose_name="Municipio", null=True, blank=True, help_text="Actualice con F5")
	periodicidad = models.ForeignKey(Periodicidad, verbose_name="Periodicidad", null=True, blank=True)
	lectoria = models.CharField("Índice de Lectoría", max_length=100, null=True, blank=True)
	infolectoria = models.CharField("Información Lectoría", max_length=255, blank=True)
	fuentelectoria = models.ForeignKey(Fuente, related_name="fuente_lectoria_escrito", verbose_name="Fuente Lectoría", null=True, blank=True, max_length=255)
	tiraje = models.CharField("Tiraje", max_length=100, null=True, blank=True)
	infotiraje = models.CharField("Información Tiraje", max_length=255, null=True, blank=True)
	fuentetiraje = models.ForeignKey(Fuente, related_name="fuente_tiraje_escrito", verbose_name="Fuente Tiraje", null=True, blank=True, max_length=255)
	direccion = models.CharField("Dirección", max_length=255, blank=True, help_text="Calle-Nº-Departamento-Municipio")
	sitioweb = models.URLField("Sitio WEB", max_length=255, null=True, blank=True, help_text="http://...")
	director = models.ForeignKey(Ejecutivo, related_name="escrito_director", verbose_name="Director", null=True, blank=True)
	gerentegeneral = models.ForeignKey(Ejecutivo, related_name="escrito_gerentegeneral", verbose_name="Gerente General", null=True, blank=True)
	propietario = select2.fields.ManyToManyField(Propietario, related_name="propietario_escrito", verbose_name="Empresa Controladora", max_length=255, null=True, blank=True, help_text="Actualice con F5")
	fuentepropiedad = models.ForeignKey(Fuente, related_name="fuente_propiedad_escrito", verbose_name="Fuente Propiedad", null=True, blank=True, max_length=255)
	telefono = models.CharField("Teléfono", max_length=100, null=True, blank=True)
	observaciones = models.TextField("Observaciones", null=True, blank=True)
	anexos = models.TextField("Anexos", null=True, blank=True)
	check = models.BooleanField("Terminado", default=None)

class GeneroRadio(models.Model):
	class Meta:
			verbose_name = 'Género Radio'
			verbose_name_plural = 'Géneros Radios'
	genero = models.CharField("Género", max_length=255, unique=True)
	def __unicode__(self):
		return self.genero

class Radio(models.Model):
	class Meta:
			verbose_name = 'Radio'
			verbose_name_plural = 'Radios'
	medio = models.CharField("Nombre", max_length=255, unique=True)
	def __unicode__(self):
		return self.medio
	asociadoaescrito = models.ForeignKey('Escrito', related_name="radio_asociadoaescrito", verbose_name="Asociado a Medio Escrito", null=True, blank=True)
	asociadoaradio = models.ForeignKey('self', related_name="radio_asociadoaradio", verbose_name="Asociado a Radio", null=True, blank=True)
	asociadoacanaltv = models.ForeignKey('CanalTV', related_name="radio_asociadoacanaltv", verbose_name="Asociado a Canal de TV", null=True, blank=True)
	asociadoamediodigital = models.ForeignKey('MedioDigital', related_name="radio_asociadoamediodigital", verbose_name="Asociado a Medio Digital", null=True, blank=True)
	genero = models.ForeignKey(GeneroRadio, related_name="radio_genero", null=True, blank=True)
	FRECUENCIA = (
		('AM', 'AM'),
		('FM', 'FM'),
		('AM y FM', 'AM y FM'),
		)
	frecuencia = models.CharField("Frecuencia", max_length=100, null=True, blank=True, choices=FRECUENCIA)
	inicio = models.DateField("Fecha Fundación", null=True, blank=True)
	inicioyear = models.IntegerField(('Año'), max_length=4, choices=YEAR_CHOICES, default=datetime.datetime.now().year, null=True, blank=True)
	indiceaudiencia = models.CharField("Índice de Audiencia", max_length=100, null=True, blank=True)
	infoaudiencia = models.CharField("Información de Índice Audiencia", max_length=255, blank=True)
	fuenteaudiencia = models.ForeignKey(Fuente, related_name="fuente_audiencia_radio", verbose_name="Fuente Audiencia", null=True, blank=True, max_length=255)
	COBERTURA = (
		('Nacional', 'Nacional'),
		('Regional', 'Regional'),
		('Departamental', 'Departamental'),
		('Municipal', 'Municipal'),
		('Local', 'Local'),
		)
	cobertura = models.CharField("Cobertura", max_length=100, null=True, blank=True, choices=COBERTURA)
	region = select2.fields.ManyToManyField(Region, verbose_name="Departamento", related_name="radio_region", null=True, blank=True, help_text="Actualice con F5")
	ciudad = select2.fields.ManyToManyField(Ciudad, verbose_name="Municipio", related_name="radio_ciudad", null=True, blank=True, help_text="Actualice con F5")
	direccion = models.CharField("Dirección", max_length=255, blank=True, help_text="Calle-Nº-Departamento-Municipio")
	sitioweb = models.URLField("Sitio WEB", max_length=255, null=True, blank=True, help_text="http://...")
	director = models.ForeignKey(Ejecutivo, related_name="radio_director", verbose_name="Director", null=True, blank=True)
	gerentegeneral = models.ForeignKey(Ejecutivo, related_name="radio_gerentegeneral", verbose_name="Gerente General", null=True, blank=True)
	propietario = select2.fields.ManyToManyField(Propietario, related_name="propietario_radio", verbose_name="Empresa Controladora", max_length=255, null=True, blank=True, help_text="Actualice con F5")
	fuentepropiedad = models.ForeignKey(Fuente, related_name="fuente_propiedad_radio", verbose_name="Fuente Propiedad", null=True, blank=True, max_length=255)
	telefono = models.CharField("Teléfono", max_length=100, null=True, blank=True)
	observaciones = models.TextField("Observaciones", null=True, blank=True)
	anexos = models.TextField("Anexos", null=True, blank=True)
	check = models.BooleanField("Terminado", default=None)

class GeneroCanalTV(models.Model):
	class Meta:
			verbose_name = 'Género Canal TV'
			verbose_name_plural = 'Géneros Canales TV'
	genero = models.CharField("Género", max_length=255, unique=True)
	def __unicode__(self):
		return self.genero

class CanalTV(models.Model):
	class Meta:
			verbose_name = 'Canal de TV'
			verbose_name_plural = 'Canales de TV'
	TIPO = (
		('Abierto', 'Abierto'),
		('Cable', 'Cable'),
		)
	tipo = models.CharField("Tipo", max_length=100, null=True, blank=True, choices=TIPO)
	medio = models.CharField("Nombre", max_length=255, unique=True)
	def __unicode__(self):
		return self.medio
	asociadoaescrito = models.ForeignKey('Escrito', related_name="canaltv_asociadoaescrito", verbose_name="Asociado a Medio Escrito", null=True, blank=True)
	asociadoaradio = models.ForeignKey('Radio', related_name="canaltv_asociadoaradio", verbose_name="Asociado a Radio", null=True, blank=True)
	asociadoacanaltv = models.ForeignKey('self', related_name="canaltv_asociadoacanaltv", verbose_name="Asociado a Canal de TV", null=True, blank=True)
	asociadoamediodigital = models.ForeignKey('MedioDigital', related_name="canaltv_asociadoamediodigital", verbose_name="Asociado a Medio Digital", null=True, blank=True)
	genero = models.ForeignKey(GeneroCanalTV, related_name="canaltv_genero", null=True, blank=True)
	inicio = models.DateField("Fecha Fundación", null=True, blank=True)
	inicioyear = models.IntegerField(('Año'), max_length=4, choices=YEAR_CHOICES, default=datetime.datetime.now().year, null=True, blank=True)
	COBERTURA = (
		('Nacional', 'Nacional'),
		('Regional', 'Regional'),
		('Departamental', 'Departamental'),
		('Municipal', 'Municipal'),
		('Local', 'Local'),
		)
	cobertura = models.CharField("Cobertura", max_length=100, null=True, blank=True, choices=COBERTURA)
	rating = models.CharField("Rating", max_length=100, null=True, blank=True)
	inforating = models.CharField("Información de Rating", max_length=255, blank=True)
	fuenterating = models.ForeignKey(Fuente, related_name="fuente_rating_canaltv", verbose_name="Fuente Rating", null=True, blank=True, max_length=255)
	region = select2.fields.ManyToManyField(Region, verbose_name="Departamento", related_name="canaltv_region", null=True, blank=True, help_text="Actualice con F5")
	ciudad = select2.fields.ManyToManyField(Ciudad, verbose_name="Municipio", related_name="canaltv_ciudad", null=True, blank=True, help_text="Actualice con F5")
	direccion = models.CharField("Dirección", max_length=255, blank=True, help_text="Calle-Nº-Departamento-Municipio")
	sitioweb = models.URLField("Sitio WEB", max_length=255, null=True, blank=True, help_text="http://...")
	director = models.ForeignKey(Ejecutivo, related_name="canaltv_director", verbose_name="Director/Presidente", null=True, blank=True)
	gerentegeneral = models.ForeignKey(Ejecutivo, related_name="canaltv_gerentegeneral", verbose_name="Gerente General", null=True, blank=True)
	propietario = select2.fields.ManyToManyField(Propietario, related_name="propietario_canaltv", verbose_name="Empresa Controladora", max_length=255, null=True, blank=True, help_text="Actualice con F5")
	fuentepropiedad = models.ForeignKey(Fuente, related_name="fuente_propiedad_canaltv", verbose_name="Fuente Propiedad", null=True, blank=True, max_length=255)
	telefono = models.CharField("Teléfono", max_length=100, null=True, blank=True)
	observaciones = models.TextField("Observaciones", null=True, blank=True)
	anexos = models.TextField("Anexos", null=True, blank=True)
	check = models.BooleanField("Terminado", default=None)

class GeneroMedioDigital(models.Model):
	class Meta:
			verbose_name = 'Género Medio Digital'
			verbose_name_plural = 'Géneros Medios Digitales'
	genero = models.CharField("Género", max_length=255, unique=True)
	def __unicode__(self):
		return self.genero

class MedioDigital(models.Model):
	class Meta:
			verbose_name = 'Medio Digital'
			verbose_name_plural = 'Medios Digitales'
	medio = models.CharField("Nombre", max_length=255, unique=True)
	def __unicode__(self):
		return self.medio
	sitioweb = models.URLField("Sitio WEB", max_length=255, null=True, blank=True, help_text="http://...")
	genero = models.ForeignKey(GeneroMedioDigital, related_name="mediodigital_genero", null=True, blank=True)
	COBERTURA = (
		('Nacional', 'Nacional'),
		('Regional', 'Regional'),
		('Comunal', 'Comunal'),
		)
	cobertura = models.CharField("Cobertura", max_length=100, null=True, blank=True, choices=COBERTURA)
	CARACTERISTICA = (
		('Nativo', 'Nativo'),
		('Asociado', 'Asociado'),
		)
	nativoasociado = models.CharField("Nativo o Asociado", max_length=100, null=True, blank=True, choices=CARACTERISTICA)
	PAGADO_GRATUITO = (
		('Pagado', 'Pagado'),
		('Gratuito', 'Gratuito'),
		('Gratuito con Contenido Pagado', 'Gratuito con Contenido Pagado')
		)
	pagado_gratuito = models.CharField("Pagado o Gratuito", max_length=100, null=True, blank=True, choices=PAGADO_GRATUITO)
	asociadoaescrito = models.ForeignKey('Escrito', related_name="mediodigital_asociadoaescrito", verbose_name="Asociado a Medio Escrito", null=True, blank=True)
	asociadoaradio = models.ForeignKey('Radio', related_name="mediodigital_asociadoaradio", verbose_name="Asociado a Radio", null=True, blank=True)
	asociadoacanaltv = models.ForeignKey('CanalTV', related_name="mediodigital_asociadoacanaltv", verbose_name="Asociado a Canal de TV", null=True, blank=True)
	asociadoamediodigital = models.ForeignKey('self', related_name="mediodigital_asociadoamediodigital", verbose_name="Asociado a Medio Digital", null=True, blank=True)
	inicio = models.DateField("Fecha Fundación", null=True, blank=True)
	inicioyear = models.IntegerField(('Año'), max_length=4, choices=YEAR_CHOICES, default=datetime.datetime.now().year, null=True, blank=True)
	visitaspaginasvistas = models.IntegerField("Visitas Mes-Páginas Vistas", max_length=100, null=True, blank=True)
	visitasunicas = models.IntegerField("Visitas Mes-Visitas Únicas", max_length=100, null=True, blank=True)
	infovisitas = models.CharField("Información de Visitas", max_length=255, blank=True)
	fuentevisitas = models.ForeignKey(Fuente, related_name="fuente_visitas_mediodigital", verbose_name="Fuente", null=True, blank=True, max_length=255)
	region = select2.fields.ManyToManyField(Region, verbose_name="Departamento", related_name="mediodigital_region", null=True, blank=True, help_text="Actualice con F5")
	ciudad = select2.fields.ManyToManyField(Ciudad, verbose_name="Municipio", related_name="mediodigital_ciudad", null=True, blank=True, help_text="Actualice con F5")
	direccion = models.CharField("Dirección", max_length=255, blank=True, help_text="Calle-Nº-Departamento-Municipio")
	director = models.ForeignKey(Ejecutivo, related_name="mediodigital_director", verbose_name="Director", null=True, blank=True)
	gerentegeneral = models.ForeignKey(Ejecutivo, related_name="mediodigital_gerentegeneral", verbose_name="Gerente General", null=True, blank=True)
	propietario = select2.fields.ManyToManyField(Propietario, related_name="propietario_mediodigital", verbose_name="Empresa Controladora", max_length=255, null=True, blank=True, help_text="Actualice con F5")
	fuentepropiedad = models.ForeignKey(Fuente, related_name="fuente_propiedad_mediodigital", verbose_name="Fuente Propiedad", null=True, blank=True, max_length=255)
	telefono = models.CharField("Teléfono", max_length=100, null=True, blank=True)
	observaciones = models.TextField("Observaciones", null=True, blank=True)
	anexos = models.TextField("Anexos", null=True, blank=True)
	check = models.BooleanField("Terminado", default=None)

class TipoDocumento(models.Model):
	class Meta:
			verbose_name = 'Tipo de Regulación'
			verbose_name_plural = 'Tipos de Regulación'
	tipodocumento = models.CharField("Tipo", max_length=255, unique=True)
	def __unicode__(self):
		return self.tipodocumento

class Regulacion(models.Model):
	class Meta:
			verbose_name = 'Regulación'
			verbose_name_plural = 'Regulaciones'
	documento = models.CharField("Documento", max_length=255, unique=True)
	tipodocumento = models.ForeignKey(TipoDocumento, verbose_name="Tipo de Regulación", null=True, blank=True)
	descripciondocumento = models.TextField("Descripción", null=True, blank=True)
	linkdocumento = models.URLField("Link", null=True, blank=True, help_text="http://...")