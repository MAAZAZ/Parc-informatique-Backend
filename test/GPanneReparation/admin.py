from django.contrib import admin
from .models import Piece, Reparation, Panne


class PieceModel(admin.ModelAdmin):
    list_display = ('reference', 'libelle', 'prix_unitaire',)
    list_filter = ('libelle',)
    ordering = ('id',)
    search_fields = ('libelle',)


class ReparationModel(admin.ModelAdmin):
    # 'intervention',
    list_display = ('date_debut', 'date_fin', 'intervention',
                    'motif',  'panne_concerne', 'prix_total', 'tva')
    list_filter = ('panne_concerne',)
    ordering = ('id',)
    search_fields = ('panne_concerne',)

    def Motif(self, Reparation):
        text = Reparation.motif[0:80]
        if len(Reparation.motif) > 80:
            return '%s...' % text
        else:
            return text


class PanneModel(admin.ModelAdmin):
    # 'reclamation'
    list_display = ('reclamation', 'produit', 'date', 'quantite')
    list_filter = ('produit',)
    ordering = ('id',)
    search_fields = ('produit',)


admin.site.register(Piece, PieceModel)
admin.site.register(Reparation, ReparationModel)
admin.site.register(Panne, PanneModel)
