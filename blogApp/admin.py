from django.contrib import admin
from .models import entryModel
from .models import Genre
from .models import Image

admin.site.register(entryModel)
admin.site.register(Genre)
admin.site.register(Image)

# Register your models here.
