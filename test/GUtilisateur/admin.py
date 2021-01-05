from django.contrib import admin
from .models import Service, Agent


class ServiceModel(admin.ModelAdmin):
    list_display = ('nom_service',)
    ordering = ('id',)
    search_fields = ('nom_service',)


class AgentModel(admin.ModelAdmin):
    list_display = ('username', 'matricule', 'first_name', 'last_name', 'role',
                    'telephone', 'email', 'service', 'specialite')
    ordering = ('id',)
    # list_filter=('',)
    search_fields = ('first_name', 'last_name')
    prepopulated_fields = {'username': ('first_name', 'last_name')}


admin.site.register(Service, ServiceModel)
admin.site.register(Agent, AgentModel)
