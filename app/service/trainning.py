from app.outbound.rds import create_connection


def obter_treinos(nome_usuario):
    execute_select('treino', ['id', 'nome', 'data_inicio', 'data_fim'], f"usuario = '{nome_usuario}'")
