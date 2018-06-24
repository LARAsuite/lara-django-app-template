"""_____________________________________________________________________

:PROJECT: LARA

*{{ app_name }} admin *

:details: {{ app_name }} admin module admin backend configuration.
         - 

:file:    admin.py
:authors: {{ authors }}

:date: (creation)          {{ creation_date }}
:date: (last modification) {{ creation_date }}

.. note:: -
.. todo:: - 
________________________________________________________________________
"""
__version__ = "0.0.1"

import os
import sys

from setuptools import setup, find_packages
#~ from distutils.sysconfig import get_python_lib

pkg_name = {{ app_name }}

install_requires = [] 
data_files = []
    
setup(name=pkg_name,
    version=__version__,
    description='{{ app_name }}',
    long_description=read('README.rst'),
    author='{{ authors }}',
    author_email='{{ authors }}',
    keywords='lab automation, experiments, database, evaluation, visualisation, SiLA2, robots',
    url='https://github.com/LARAsuite/lara-django-app-template',
    license='GPL',
    packages=find_packages('{{ app_name }}'), #['codegenerator'],
    #~ package_dir={'{{ app_name }}':'{{ app_name }}'},
    install_requires = install_requires,
    test_suite='',
    classifiers=['Development Status :: 1 - Development',
                   'Environment :: commandline',
                   'Framework :: gRPC',
                   'Intended Audience :: Developers',
                   'License :: OSI Approved :: GPL',
                   'Operating System :: OS Independent',
                   'Programming Language :: Python',
                   'Programming Language :: Python :: 3.4',
                   'Programming Language :: Python :: 3.5',
                   'Topic :: Utilities'],
    include_package_data=True,
    data_files=data_files,
)
