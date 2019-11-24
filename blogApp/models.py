from django.conf import settings
from django.db import models
from django.utils import timezone

class Genre(models.Model):
    id = models.AutoField(primary_key=True)
    genre = models.CharField(max_length=64, blank=False, unique=True)
    def __str__(self):
        return self.genre

class Image(models.Model):
    id = models.AutoField(primary_key=True)
    image = models.ImageField(upload_to='photos')
    path = models.CharField(max_length=200, null=True)




class Post(models.Model):
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    text = models.TextField()
    created_date = models.DateTimeField(default=timezone.now)
    published_date = models.DateTimeField(blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):
        return self.title

class entryModel(models.Model):
    articleNumber = models.AutoField(primary_key=True)
    genre = models.ForeignKey(Genre, on_delete=models.CASCADE)
    recommend = models.IntegerField(null=True, blank=True)
    genreNumber = models.IntegerField(null=False)
    image = models.ImageField(upload_to="media/", null=True)
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, null=True)
    title = models.CharField(max_length=200)
    h1 = models.CharField(max_length=200, null=True)
    text1 = models.TextField(null=False)
    h2 = models.CharField(max_length=200, null=True, blank=True)
    text2 = models.TextField(null=True, blank=True)
    h3 = models.CharField(max_length=200, null=True, blank=True)
    text3 = models.TextField(null=True, blank=True)
    h4 = models.CharField(max_length=200, null=True, blank=True)
    text4 = models.TextField(null=True, blank=True)
    h5 = models.CharField(max_length=200, null=True, blank=True)
    text5 = models.TextField(null=True, blank=True)
    created_date = models.DateTimeField(default=timezone.now)
    published_date = models.DateTimeField(blank=True, null=True)
    class Meta:
        unique_together = ('genre', 'genreNumber')

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def Imagemethod(self):
        if self.image and hasattr(self.image, "url"):
            return self.image.url
        else:
            return "/static/img/thumb.png"

    def __str__(self):
        return self.title