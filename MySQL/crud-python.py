import mysql.connector

conexao = mysql.connector.connect(
    host='localhost',
    user='root',
    password='123456',
    database='bancodedados'

)

cursor = conexao.cursor()
# CRUD
#comando sempre em aspas simples

#comando = ''
#cursor.execute(comando)
#conexao.commit() #edita o banco de dados
# resultado = cursor.fetchall() #ler o banco de dados

#CREATE
nome_produto = '"; SHOW TABLES; --'
valor = 10
comando = f'INSERT INTO vendas (nome_produto, valor) VALUES ("{nome_produto}", {valor})'
cursor.execute(comando)
conexao.commit()

# READ
comando2 = f'SELECT * FROM vendas WHERE nome_produto ="{nome_produto}"'
cursor.execute(comando2)
resultado = cursor.fetchall() #ler o banco de dados
print(resultado)

#UPDATE

valor2 = 6
nome_produto ='furosemida'
comando3 = f'UPDATE vendas SET valor = {valor2} WHERE nome_produto = "{nome_produto}" '
cursor.execute(comando3)
conexao.commit()

#DELETE

comando4 = f'DELETE FROM vendas WHERE nome_produto ="{nome_produto}"'
cursor.execute(comando4)
conexao.commit()

cursor.close()
conexao.close()

