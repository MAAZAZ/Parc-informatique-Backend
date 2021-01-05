from django.urls import include, path, re_path
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()

router.register('services', ServiceViewSet)
router.register('agents', AgentViewSet)
router.register('types', TypeViewSet)
router.register('produits', ProduitViewSet)
router.register('contrats', ContratViewSet)
router.register('commandes', Contrat_produitViewSet)
router.register('caracteristiques', CaracteristiqueViewSet)
router.register('tiers', TierViewSet)
router.register('marques', MarqueViewSet)
router.register('logiciels', LogicielViewSet)
router.register('materiels', MaterielViewSet)
router.register('pieces', PieceViewSet)
router.register('reparations', ReparationViewSet)
router.register('reparationspublic', ReparationPublicViewSet)
router.register('pannes', PanneViewSet)
router.register('reclamations', ReclamationViewSet)
router.register('interventions', InterventionViewSet)
router.register('interventions internes', Intervention_interneViewSet)
router.register('interventions externes', Intervention_externeViewSet)


# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    path('', include(router.urls)),
    re_path(r'^auth/', include('rest_framework.urls', namespace='rest_framework'))
]
