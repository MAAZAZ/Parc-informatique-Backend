from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.translation import ugettext_lazy as _
import os


class Service(models.Model):
    nom_service = models.CharField(
        max_length=255, verbose_name="Nom du service")

    def __str__(self):
        return self.nom_service


def content_file_name(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s.%s" % (instance.username, ext)
    return os.path.join('agents', filename)


class Agent(AbstractUser):
    Role_CHOICES = (
        ('0', 'Administrateur'),
        ('1', 'Intervenant'),
        ('2', 'Utilisateur'),
    )

    username = models.CharField(max_length=100, unique=True)
    matricule = models.CharField(max_length=100, blank=True)
    email = models.EmailField(_('Adresse Email'))
    telephone = models.CharField(max_length=255, null=True)
    role = models.CharField(max_length=1, choices=Role_CHOICES, blank=True)
    service = models.ForeignKey(
        Service, on_delete=models.CASCADE, blank=True, null=True)
    specialite = models.CharField(max_length=255)
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email', 'first_name', 'last_name']

    def __str__(self):
        return "{}".format(self.first_name+' '+self.last_name)
