#!/usr/bin/env python3

# -*- coding: utf-8 -*-
'''
PF module for interactive with basic PF Commands.

.. versionadded:: 

:depends: PF

Example configuration

.. code-block:: yaml
    PF:
      ruleset: salt://path/to/file
'''

from __future__ import absolute_import
import logging

VIRTUALNAME='pf'

def __virtual__():
    ''' 
    Only load this module if the PF device is available.
    '''
    return VIRTUALNAME

def _setRules(filePath,noop):
    return __salt__['pf.load'](file=filePath,noop=noop)

def 