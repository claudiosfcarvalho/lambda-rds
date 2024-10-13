from numbers import Number
from tokenize import String

from rich.table import Column


class Usuario():
    tablename = 'usuario'
    fields = ['id', 'nome', 'email']
    values = []
    def to_dict(self):
        return {
            'id': self.fields[0],
            'nome': self.fields[1],
            'email': self.fields[2]
        }

class Treino():
    tablename__ = 'treino'
    fields = ['id', 'tipo_treino', 'descricao']
    values = []
    def to_dict(self):
        return {
            'id': self.fields[0],
            'tipo_treino': self.fields[1],
            'descricao': self.fields[2]
        }
    