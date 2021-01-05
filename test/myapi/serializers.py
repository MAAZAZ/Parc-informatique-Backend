from rest_polymorphic.serializers import PolymorphicSerializer
from rest_framework import serializers
from GProduit.models import Produit, Caracteristique, Tier, Marque, Logiciel, Materiel, Type, Contrat, Contrat_produit
from GUtilisateur.models import Agent, Service
from GPanneReparation.models import Piece, Reparation, Panne
from GInterventionReclamation.models import Reclamation, Intervention, Intervention_externe, Intervention_interne
from django.contrib.auth.models import User
from generic_relations.relations import GenericRelatedField


class ServiceSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Service
        fields = ('id', 'nom_service',)


class AgentSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Agent
        fields = ('id', 'username', 'first_name', 'last_name', 'matricule', 'role', 'service',
                  'specialite', 'telephone', 'email', 'password', 'is_staff')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = super().create(validated_data)
        user.set_password(validated_data['password'])
        user.save()
        return user

    def update(self, instance, validated_data):
        user = super().update(instance, validated_data)
        try:
            if validated_data['password']:
                user.set_password(validated_data['password'])
            user.save()
        except KeyError:
            pass
        return user

    def __init__(self, *args, **kwargs):
        super(AgentSerializer, self).__init__(*args, **kwargs)
        if self.context['request'].method == "PUT":
            self.fields.pop('password')


class TypeSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Type
        fields = ('id', 'libelle', 'image')


class LogicielSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Logiciel
        fields = ('id', 'libelle', 'image', 'date_installation',
                  'version', 'description')


class MaterielSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Materiel
        fields = ('id', 'libelle', 'image')


class MarqueSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Marque
        fields = ('id', 'designation', 'logo')


class TierSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Tier
        fields = ('id', 'raison_sociale', 'specialite', 'logo',
                  'telephone', 'mail', 'adresse')


class CaracteristiqueSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Caracteristique
        fields = ('id', 'libelle',)


class ProduitSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Produit
        fields = ('id', 'reference', 'designation',
                  'marque', 'type_produit', 'caracteristiques', 'quantite_totale')


class ContratSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Contrat
        fields = ('id', 'reference', 'type', 'date_signe_contrat',
                  'date_fin_contrat', 'fournisseur', 'prix_total')


class Contrat_produitSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Contrat_produit
        fields = ('id', 'produit', 'contrat', 'prix_unitaire', 'quantite')


class PieceSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Piece
        fields = ('id', 'reference', 'libelle', 'prix_unitaire', 'image')


class PanneSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Panne
        fields = ('id', 'produit', 'reclamation', 'date', 'quantite')


class ReparationSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Reparation
        fields = ('id', 'panne_concerne', 'date_debut', 'date_fin',
                  'motif', 'intervention', 'pieces', 'prix_total', 'tva')


class ReparationPublicSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Reparation
        fields = ('panne_concerne', 'date_debut',
                  'date_fin', 'intervention')


class ReclamationSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Reclamation
        fields = ('id', 'date', 'etat', 'agent', 'description')


class Intervention_interneSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Intervention_interne
        fields = ('id', 'agent')
        extra_kwargs = {
            'url': {'view_name': 'project-detail', 'lookup_field': 'pk'},
        }


class Intervention_externeSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Intervention_externe
        fields = ('id', 'prestataire')
        extra_kwargs = {
            'url': {'view_name': 'project-detail', 'lookup_field': 'pk'},
        }


class InterventionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Intervention
        fields = ('id', )
        extra_kwargs = {
            'url': {'view_name': 'project-detail', 'lookup_field': 'pk'},
        }


class ProjectPolymorphicSerializer(PolymorphicSerializer):
    model_serializer_mapping = {
        Intervention: InterventionSerializer,
        Intervention_externe: Intervention_externeSerializer,
        Intervention_externe: Intervention_externeSerializer
    }
