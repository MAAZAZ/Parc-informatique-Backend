from django.utils import timezone
from django.db import models
from GProduit.models import Produit
from GInterventionReclamation.models import Intervention, Reclamation
import os


def content_file_name(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.libelle, instance.id, ext)
    return os.path.join('pieces', filename)


class Piece(models.Model):
    reference = models.CharField(max_length=255, unique=True)
    libelle = models.CharField(max_length=255)
    prix_unitaire = models.FloatField()
    image = models.ImageField(upload_to=content_file_name, blank=True)

    def __str__(self):
        return self.libelle


class Panne(models.Model):
    produit = models.ForeignKey(Produit, on_delete=models.CASCADE)
    reclamation = models.ForeignKey(
        Reclamation, on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)
    quantite = models.IntegerField()

    def __str__(self):
        return 'Panne N° ' + str(self.id) + ' : ' + self.produit.designation


class Reparation(models.Model):
    date_debut = models.DateField(default=timezone.now)
    date_fin = models.DateField(blank=True, null=True)
    motif = models.TextField(null=True, blank=True)
    panne_concerne = models.ForeignKey(
        Panne, on_delete=models.CASCADE, verbose_name="Panne concerné")
    intervention = models.ForeignKey(
        Intervention, on_delete=models.CASCADE)
    pieces = models.ManyToManyField(Piece, blank=True)
    prix_total = models.FloatField(default=0.0)
    tva = models.FloatField(default=0.0)

    def __str__(self):
        return 'Réparation : ' + self.panne_concerne.produit.designation

    def __unicode__(self):
        return "%s" % self.id
