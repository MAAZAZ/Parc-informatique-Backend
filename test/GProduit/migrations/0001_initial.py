# Generated by Django 3.1.1 on 2020-10-26 18:55

import GProduit.models
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Caracteristique',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('libelle', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='Contrat',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('reference', models.CharField(max_length=255, unique=True)),
                ('type', models.CharField(choices=[('0', 'Achat'), ('1', 'Réparation'), ('2', 'Achat et réparation')], default=1, max_length=1)),
                ('date_signe_contrat', models.DateField(default=django.utils.timezone.now, verbose_name='Date de signe le contrat')),
                ('date_fin_contrat', models.DateField(default=django.utils.timezone.now, verbose_name='Date de fin du contrat')),
            ],
        ),
        migrations.CreateModel(
            name='Marque',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('designation', models.CharField(max_length=255)),
                ('logo', models.ImageField(blank=True, upload_to=GProduit.models.content_file_name3)),
            ],
        ),
        migrations.CreateModel(
            name='Tier',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('raison_sociale', models.CharField(max_length=255)),
                ('specialite', models.CharField(max_length=255)),
                ('logo', models.ImageField(blank=True, upload_to=GProduit.models.content_file_name2)),
                ('telephone', models.CharField(blank=True, max_length=255)),
                ('mail', models.EmailField(blank=True, max_length=254)),
                ('adresse', models.TextField(null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Type',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('libelle', models.CharField(max_length=255)),
                ('image', models.ImageField(blank=True, upload_to=GProduit.models.content_file_name)),
            ],
        ),
        migrations.CreateModel(
            name='Logiciel',
            fields=[
                ('type_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='GProduit.type')),
                ('version', models.CharField(blank=True, max_length=255)),
                ('description', models.TextField(null=True)),
                ('date_installation', models.DateField(verbose_name="Date d'installation")),
            ],
            bases=('GProduit.type',),
        ),
        migrations.CreateModel(
            name='Materiel',
            fields=[
                ('type_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='GProduit.type')),
            ],
            bases=('GProduit.type',),
        ),
        migrations.CreateModel(
            name='Produit',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('reference', models.CharField(max_length=255, unique=True)),
                ('designation', models.CharField(max_length=255)),
                ('quantite_totale', models.PositiveIntegerField()),
                ('caracteristiques', models.ManyToManyField(blank=True, to='GProduit.Caracteristique')),
                ('marque', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='GProduit.marque')),
                ('type_produit', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='GProduit.type', verbose_name='Type de produit')),
            ],
        ),
        migrations.CreateModel(
            name='Contrat_produit',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('prix_unitaire', models.FloatField()),
                ('quantite', models.PositiveIntegerField()),
                ('contrat', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='GProduit.contrat')),
                ('produit', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='GProduit.produit')),
            ],
        ),
        migrations.AddField(
            model_name='contrat',
            name='fournisseur',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='GProduit.tier'),
        ),
        migrations.AddField(
            model_name='contrat',
            name='produits',
            field=models.ManyToManyField(through='GProduit.Contrat_produit', to='GProduit.Produit'),
        ),
    ]