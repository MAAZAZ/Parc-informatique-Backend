# Generated by Django 3.1.1 on 2020-10-16 21:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GProduit', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contrat',
            name='type',
            field=models.CharField(choices=[(1, 'Achat'), (2, 'Réparation'), (3, 'Achat et réparation')], default=1, max_length=1),
        ),
    ]
