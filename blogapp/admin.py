from django.contrib import admin
from .models import entrymodel
from .models import genre
from .models import image

admin.site.register(entrymodel)
admin.site.register(genre)
admin.site.register(image)

# Register your models here.
