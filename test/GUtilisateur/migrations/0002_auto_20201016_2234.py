# Generated by Django 3.1.1 on 2020-10-16 21:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GUtilisateur', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='agent',
            name='role',
            field=models.CharField(blank=True, choices=[('0', 'Administrateur'), ('1', 'Intervenant'), ('2', 'Utilisateur')], max_length=1),
        ),
    ]
