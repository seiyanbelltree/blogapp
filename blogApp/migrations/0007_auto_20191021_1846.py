# Generated by Django 2.2.5 on 2019-10-21 09:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogApp', '0006_image_path'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='entrymodel',
            name='image',
        ),
        migrations.AddField(
            model_name='entrymodel',
            name='imagePath',
            field=models.CharField(max_length=200, null=True),
        ),
    ]