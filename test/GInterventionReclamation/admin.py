from django.contrib import admin
from .models import Reclamation, Intervention, Intervention_interne, Intervention_externe


class ReclamationModel(admin.ModelAdmin):
    exclude = ('date',)
    list_display = ('agent', 'etat', 'Description')
    list_filter = ('agent',)
    ordering = ('id',)
    search_fields = ('agent',)

    def Description(self, Reclamation):
        text = Reclamation.description[0:80]
        if len(Reclamation.description) > 80:
            return '%s...' % text
        else:
            return text


class Intervention_inModel(admin.ModelAdmin):
    list_display = ('agent',)
    list_filter = ('agent',)
    ordering = ('id',)
    search_fields = ('agent',)


class Intervention_exModel(admin.ModelAdmin):
    list_display = ('prestataire',)
    list_filter = ('prestataire',)
    ordering = ('id',)
    search_fields = ('prestataire',)


class InterventionModel(admin.ModelAdmin):
    list_display = ('id',)
    list_filter = ('id',)
    ordering = ('id',)
    search_fields = ('id',)


admin.site.register(Reclamation, ReclamationModel)
admin.site.register(Intervention_interne, Intervention_inModel)
admin.site.register(Intervention_externe, Intervention_exModel)
admin.site.register(Intervention, InterventionModel)
