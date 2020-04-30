from django.conf import settings
from django.db import models


class testmodel(models.Model):
    testnumber = models.IntegerField(unique=True)
    text = models.TextField()

    def __int__(self):
        return self.testnumber
