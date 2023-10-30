# Generated by Django 4.2.4 on 2023-08-17 19:08

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Candidatos',
            fields=[
                ('id_cand', models.IntegerField(primary_key=True, serialize=False)),
                ('candidato_nombre', models.CharField(max_length=255)),
                ('lista_nombre', models.CharField(max_length=255)),
                ('partido', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'candidatos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Escrutinio',
            fields=[
                ('id_registro_votos', models.IntegerField(primary_key=True, serialize=False)),
                ('votos', models.IntegerField()),
            ],
            options={
                'db_table': 'escrutinio',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Mesas',
            fields=[
                ('mesa', models.IntegerField(primary_key=True, serialize=False)),
                ('circuito', models.CharField(max_length=255)),
                ('distrito', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'mesas',
                'managed': False,
            },
        ),
    ]