# Generated by Django 3.1.1 on 2020-10-26 21:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('contenttypes', '0002_remove_content_type_name'),
        ('GInterventionReclamation', '0002_auto_20201026_1955'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='intervention',
            options={'base_manager_name': 'objects'},
        ),
        migrations.AlterModelOptions(
            name='intervention_externe',
            options={'base_manager_name': 'objects'},
        ),
        migrations.AlterModelOptions(
            name='intervention_interne',
            options={'base_manager_name': 'objects'},
        ),
        migrations.AddField(
            model_name='intervention',
            name='polymorphic_ctype',
            field=models.ForeignKey(editable=False, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='polymorphic_ginterventionreclamation.intervention_set+', to='contenttypes.contenttype'),
        ),
    ]
