# Generated by Django 2.2.5 on 2019-10-21 10:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogApp', '0008_auto_20191021_1916'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entrymodel',
            name='image',
            field=models.ImageField(null=True, upload_to='media/'),
        ),
    ]