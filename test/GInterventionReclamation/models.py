from django.db import models
from django.utils import timezone
from GProduit.models import Type, Tier
from GUtilisateur.models import Agent
from django.contrib.contenttypes.fields import GenericRelation
from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType
from polymorphic.models import PolymorphicModel


class Reclamation(models.Model):
    Etat_CHOICES = (
        ('0', 'En attente'),
        ('1', 'En cours de traitement'),
        ('2', 'Clôturée'),
    )

    date = models.DateTimeField(default=timezone.now)
    etat = models.CharField(max_length=1, choices=Etat_CHOICES, default=1)
    agent = models.ForeignKey(Agent, on_delete=models.CASCADE)
    description = models.TextField(null=True)

    def __str__(self):
        return 'Reclamation N°' + str(self.id)


class Intervention(PolymorphicModel):

    def __str__(self):
        return 'Intervention N°' + str(self.id)


class Intervention_interne(Intervention):
    agent = models.ForeignKey(Agent, on_delete=models.CASCADE)

    def __str__(self):
        return self.agent.last_name+' '+self.agent.first_name


class Intervention_externe(Intervention):
    prestataire = models.ForeignKey(Tier, on_delete=models.CASCADE)

    def __str__(self):
        return self.prestataire.raison_sociale
