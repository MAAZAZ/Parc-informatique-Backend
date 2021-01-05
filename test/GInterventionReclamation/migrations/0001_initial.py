# Generated by Django 3.1.1 on 2020-10-26 18:55

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Intervention',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='Reclamation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(default=django.utils.timezone.now)),
                ('etat', models.CharField(choices=[('0', 'En attente'), ('1', 'En cours de traitement'), ('2', 'Clôturée')], default=1, max_length=1)),
                ('description', models.TextField(null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Intervention_externe',
            fields=[
                ('intervention_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='GInterventionReclamation.intervention')),
            ],
            bases=('GInterventionReclamation.intervention',),
        ),
        migrations.CreateModel(
            name='Intervention_interne',
            fields=[
                ('intervention_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='GInterventionReclamation.intervention')),
            ],
            bases=('GInterventionReclamation.intervention',),
        ),
    ]