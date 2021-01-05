from django.contrib import admin
from .models import Produit, Tier, Caracteristique, Logiciel, Materiel, Marque, Contrat, Contrat_produit


class MarqueModel(admin.ModelAdmin):
    list_display = ('designation',)
    list_filter = ('designation',)
    ordering = ('id',)
    search_fields = ('designation',)


class TierModel(admin.ModelAdmin):
    list_display = ('raison_sociale', 'specialite',
                    'telephone', 'mail', 'Adresse')
    # list_filter=('nom',)
    ordering = ('id',)
    search_fields = ('raison_sociale',)

    def Adresse(self, Tier):
        text = Tier.adresse[0:80]
        if len(Tier.adresse) > 80:
            return '%s...' % text
        else:
            return text


class ProduitModel(admin.ModelAdmin):
    list_display = ('reference', 'designation', 'marque',
                    'type_produit', 'quantite_totale')
    # list_filter=('designation',)
    ordering = ('id',)
    search_fields = ('designation',)
    #prepopulated_fields = {'slug': ('designation', ), }


class CaracteristiqueModel(admin.ModelAdmin):
    list_display = ('libelle',)
    # list_filter=('libelle',)
    ordering = ('id',)
    search_fields = ('libelle',)


class LogicielModel(admin.ModelAdmin):
    list_display = ('libelle', 'version', 'Description', 'date_installation')
    list_filter = ('libelle',)
    ordering = ('id',)
    search_fields = ('libelle',)

    def Description(self, Logiciel):
        text = Logiciel.description[0:80]
        if len(Logiciel.description) > 80:
            return '%s...' % text
        else:
            return text


class MaterielModel(admin.ModelAdmin):
    list_display = ('libelle',)
    list_filter = ('libelle',)
    ordering = ('id',)
    search_fields = ('libelle',)


class ContratModel(admin.ModelAdmin):
    list_display = ('reference', 'type', 'date_signe_contrat', 'date_fin_contrat',
                    'fournisseur', 'prix_total')
    # list_filter=('libelle',)
    ordering = ('id',)
    search_fields = ('fournisseur',)


class Contrat_produitModel(admin.ModelAdmin):
    list_display = ('produit', 'contrat',
                    'prix_unitaire', 'quantite')
    list_filter = ('produit', 'contrat')
    ordering = ('id',)
    search_fields = ('produit',)


admin.site.register(Logiciel, LogicielModel)
admin.site.register(Materiel, MaterielModel)
admin.site.register(Marque, MarqueModel)
admin.site.register(Caracteristique, CaracteristiqueModel)
admin.site.register(Tier, TierModel)
admin.site.register(Produit, ProduitModel)
admin.site.register(Contrat_produit, Contrat_produitModel)
admin.site.register(Contrat, ContratModel)
