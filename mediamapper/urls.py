from django.conf.urls import patterns, include, url
from django.contrib import admin
from medioschile import views

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'mediamapper.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^grappelli/', include('grappelli.urls')), # grappelli URLS
    url(r'^admin/',  include(admin.site.urls)), # admin site
    url(r'^medioschile/', include('medioschile.urls')),
    url(r'^select2/', include('select2.urls')),
)
