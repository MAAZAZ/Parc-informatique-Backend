# Generated by Django 3.1.1 on 2020-10-17 15:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('GInterventionReclamation', '0004_auto_20201016_2234'),
        ('GPanneReparation', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='panne',
            name='reclamation',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='GInterventionReclamation.reclamation'),
        ),
    ]
