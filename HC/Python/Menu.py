import tkinter as tk
import subprocess

# Chamar Bat
def executar_bat1():
    subprocess.run(["\\192.168.150.130\netlogon\limpacache.bat"], shell=True)

def executar_bat2():
    subprocess.run(["\\192.168.150.130\netlogon\livrostrade.bat"], shell=True)

def executar_bat3():
    subprocess.run(["\\192.168.150.130\netlogon\mapeadados.bat"], shell=True)

# Tamanho da janela
janela = tk.Tk()
janela.title("Suporte Harper_Collins")
janela.geometry("300x200")

# Botões
botao1 = tk.Button(janela, text="Limpar Cache Navegador", command=executar_bat1)
botao1.pack(pady=10)

botao2 = tk.Button(janela, text="Mapear Livros_Trade", command=executar_bat2)
botao2.pack(pady=10)

botao3 = tk.Button(janela, text="Mapear pasta Dados", command=executar_bat3)
botao3.pack(pady=10)

# Inicia Janela
janela.mainloop()
