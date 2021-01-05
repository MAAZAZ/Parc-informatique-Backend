from django.db import models
from django.utils import timezone
import os


def content_file_name(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.libelle, instance.id, ext)
    return os.path.join('categories', filename)


def content_file_name2(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.raison_sociale, instance.id, ext)
    return os.path.join('tiers', filename)


class Type(models.Model):
    libelle = models.CharField(max_length=255)
    image = models.ImageField(
        upload_to=content_file_name, blank=True)

    def __str__(self):
        return self.libelle


class Materiel(Type):

    def __str__(self):
        return "Materiel : "+self.libelle


class Logiciel(Type):
    version = models.CharField(max_length=255, blank=True)
    description = models.TextField(null=True)
    date_installation = models.DateField(
        verbose_name="Date d'installation")

    def __str__(self):
        return "Logiciel : "+self.libelle


def content_file_name3(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.designation, instance.id, ext)
    return os.path.join('marques', filename)


class Marque(models.Model):
    designation = models.CharField(max_length=255)
    logo = models.ImageField(upload_to=content_file_name3, blank=True)

    def __str__(self):
        return self.designation


class Tier(models.Model):
    raison_sociale = models.CharField(max_length=255)
    specialite = models.CharField(max_length=255)
    logo = models.ImageField(upload_to=content_file_name2, blank=True)
    telephone = models.CharField(max_length=255, blank=True)
    mail = models.EmailField(blank=True)
    adresse = models.TextField(null=True)

    def __str__(self):
        return self.raison_sociale


class Caracteristique(models.Model):
    libelle = models.CharField(max_length=255)

    def __str__(self):
        return self.libelle


class Produit(models.Model):
    reference = models.CharField(max_length=255, unique=True)
    designation = models.CharField(max_length=255)
    marque = models.ForeignKey(Marque, on_delete=models.CASCADE)
    type_produit = models.ForeignKey(
        Type, on_delete=models.CASCADE, verbose_name="Type de produit")
    caracteristiques = models.ManyToManyField(
        Caracteristique, blank=True)
    quantite_totale = models.PositiveIntegerField()

    def __str__(self):
        return self.designation


class Contrat(models.Model):
    Type_CHOICES = (
        ('0', 'Achat'),
        ('1', 'Réparation'),
        ('2', 'Achat et réparation'),
    )

    reference = models.CharField(max_length=255, unique=True)
    fournisseur = models.ForeignKey(Tier, on_delete=models.CASCADE)
    type = models.CharField(max_length=1, choices=Type_CHOICES, default=1)
    date_signe_contrat = models.DateField(
        default=timezone.now, verbose_name="Date de signe le contrat")
    date_fin_contrat = models.DateField(
        default=timezone.now, verbose_name="Date de fin du contrat")
    produits = models.ManyToManyField(Produit, through="Contrat_produit")
    prix_total = models.FloatField(default=0.0)

    def __str__(self):
        return 'Contrat N°'+str(self.id)


class Contrat_produit(models.Model):
    produit = models.ForeignKey(Produit, on_delete=models.CASCADE)
    contrat = models.ForeignKey(Contrat, on_delete=models.CASCADE)
    prix_unitaire = models.FloatField()
    quantite = models.PositiveIntegerField()
