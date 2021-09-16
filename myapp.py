"""
This is the entry point to your application. The environment variable FLASK_APP
is set to the name of this file (excluding the extension, .py)
"""

from app import create_app
import os

import logging
log = logging.getLogger('werkzeug')
log.setLevel(logging.ERROR)

print('Firing things up')
app = create_app(os.getenv('FLASK_ENV') or 'production')
