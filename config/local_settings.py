import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'blogdb',
        'USER': 'root',
        'PASSWORD': 'Rhoden5130!',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}

DEBUG = True
