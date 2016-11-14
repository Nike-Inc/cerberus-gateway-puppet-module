# Class: gateway
# ===========================
#
# This puppet module is designed for and is probably only usable by Cerberus
#
#             Suck it Trebek!
#
#                  _-¯¯-_
#             _--¯O    O¯--_
#    ___---¯¯O __.      .__ O¯¯---___
# /¯¯ __O_--? ¯   \    /    ¯?--_O__ ¯¯\
# | O?¯             \__/             ¯?O | 
# |  '    _.-.       /\       .-._    '  |
# |O|    ?..?       /__\       ?..?    |O|
# | |     '?. .-.  /\  /\  .-. .?'     | |
# | ---__  ¯?__?  /__\/__\  ?__?¯  __--- |
# |O     \                        /     O|
# |       \  /¯?_    /\    _?¯\  /       |
# |       / /    -   \/   -    \ \       |
# |O   __/  | __   -:¯¯:-   __ |  \__   O|
# | ---     |/  -_// \/ \\_-  \|     --- | 
# |O|            \   ||   /            |O|  
# \ '                \/               ' /
# \O\    _-¯?.    ______    .?¯-_    /O/
#  \ \  /  /¯¯¯?  \    /  ?¯¯¯\  \  / /
#   \O\/   |       \  /       |   \/O/
#    \     |        \/        |     /
#     '.O  |_     /\  /\     _|  O.'
#        '._O'.__/  --  \__.'O_.'
#          '._ O        O _.'
#              '._ O  O _.'
#                 '.__.'
#
# Parameters
# ----------
#
# Variables
# ----------
#
# Examples
# --------
#
# @example
#    include 'gateway'
#
# Authors
# -------
#
# Justin Field <justin.field@nike.com>
#
# Copyright
# ---------
#
# Copyright 2015 Nike Inc., unless otherwise noted.
#
class gateway inherits gateway::params {
  include gateway::install
  include gateway::config
  include gateway::firstboot
}