from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import viewsets, permissions
from .serializers import *
from GProduit.models import Produit, Caracteristique, Tier, Marque, Logiciel, Materiel, Type, Contrat, Contrat_produit
from GUtilisateur.models import Agent, Service
from GPanneReparation.models import Reparation, Piece, Panne
from GInterventionReclamation.models import Reclamation, Intervention, Intervention_externe, Intervention_interne
from rest_framework.permissions import AllowAny, IsAuthenticated
from .permissions import IsLoggedInUserOrAdmin, IsAdminUser
from rest_framework.authentication import BasicAuthentication, TokenAuthentication, SessionAuthentication


class ServiceViewSet(viewsets.ModelViewSet):
    queryset = Service.objects.all().order_by('id')
    serializer_class = ServiceSerializer


class AgentViewSet(viewsets.ModelViewSet):
    queryset = Agent.objects.all().order_by('id')
    serializer_class = AgentSerializer
    # permission_classes = (permissions.IsAdminUser,)

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class TypeViewSet(viewsets.ModelViewSet):
    queryset = Type.objects.all().order_by('id')
    serializer_class = TypeSerializer
    # permission_classes = (permissions.IsAuthenticatedOrReadOnly,)


class LogicielViewSet(viewsets.ModelViewSet):
    queryset = Logiciel.objects.all().order_by('id')
    serializer_class = LogicielSerializer


class MaterielViewSet(viewsets.ModelViewSet):
    queryset = Materiel.objects.all().order_by('id')
    serializer_class = MaterielSerializer


class MarqueViewSet(viewsets.ModelViewSet):
    queryset = Marque.objects.all().order_by('id')
    serializer_class = MarqueSerializer

    def post(self, request, *args, **kwargs):
        designation = request.data['designation']
        logo = request.data['logo']
        Marque.objects.create(designation=designation, logo=logo)


class TierViewSet(viewsets.ModelViewSet):
    queryset = Tier.objects.all().order_by('id')
    serializer_class = TierSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class CaracteristiqueViewSet(viewsets.ModelViewSet):
    queryset = Caracteristique.objects.all().order_by('id')
    serializer_class = CaracteristiqueSerializer


class ContratViewSet(viewsets.ModelViewSet):
    queryset = Contrat.objects.all().order_by('id')
    serializer_class = ContratSerializer


class ProduitViewSet(viewsets.ModelViewSet):
    queryset = Produit.objects.all().order_by('id')
    serializer_class = ProduitSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class Contrat_produitViewSet(viewsets.ModelViewSet):
    queryset = Contrat_produit.objects.all().order_by('id')
    serializer_class = Contrat_produitSerializer


class PieceViewSet(viewsets.ModelViewSet):
    queryset = Piece.objects.all().order_by('id')
    serializer_class = PieceSerializer


class ReparationViewSet(viewsets.ModelViewSet):
    queryset = Reparation.objects.all().order_by('id')
    serializer_class = ReparationSerializer


class ReparationPublicViewSet(viewsets.ModelViewSet):
    queryset = Reparation.objects.all().order_by('id')
    serializer_class = ReparationPublicSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class PanneViewSet(viewsets.ModelViewSet):
    queryset = Panne.objects.all().order_by('id')
    serializer_class = PanneSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class ReclamationViewSet(viewsets.ModelViewSet):
    queryset = Reclamation.objects.all().order_by('id')
    serializer_class = ReclamationSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'create':
            permission_classes = [AllowAny]
        elif self.action == 'list' or self.action == 'retrieve' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class Intervention_interneViewSet(viewsets.ModelViewSet):
    queryset = Intervention_interne.objects.all().order_by('id')
    serializer_class = Intervention_interneSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class Intervention_externeViewSet(viewsets.ModelViewSet):
    queryset = Intervention_externe.objects.all().order_by('id')
    serializer_class = Intervention_externeSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]


class InterventionViewSet(viewsets.ModelViewSet):
    queryset = Intervention.objects.all().order_by('id')
    serializer_class = ProjectPolymorphicSerializer

    def get_permissions(self):
        permission_classes = []
        if self.action == 'list' or self.action == 'retrieve':
            permission_classes = [AllowAny]
        elif self.action == 'creatz' or self.action == 'destroy' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]
