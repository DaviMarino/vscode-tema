# 🚀 Meus "Dotfiles" do Visual Studio Code

Este repositório armazena todas as minhas configurações pessoais, atalhos, snippets e extensões do VS Code.

O objetivo é manter um ambiente de desenvolvimento 100% consistente em múltiplas máquinas (ex: PC de casa, notebook, PC do trabalho) usando **Git** e **Links Simbólicos**, em vez de depender da Sincronização de Configurações nativa do VS Code.

---

## 🎯 O que está Sincronizado

* **`settings.json`**: Todas as configurações do editor (tema, fontes, formatação, customizações de cor).
* **`keybindings.json`**: Mapeamento de atalhos de teclado personalizados.
* **`snippets/`**: Pasta contendo todos os snippets de código customizados.
* **`extensions.list`**: Um arquivo de texto gerado que lista todas as extensões instaladas.

---

## 🛠️ Pré-requisitos

1.  [Git](https://git-scm.com/downloads) instalado.
2.  [Visual Studio Code](https://code.visualstudio.com/) instalado.
3.  **Importante:** Se você estava logado na Sincronização Nativa do VS Code, **desative-a** (Clique no ícone de Conta > `Desativar Sincronização de Configurações...`).

---

## ⚙️ Instruções de Instalação (Para uma Nova Máquina)

Este é o guia para configurar este repositório em um computador novo (ex: seu "PC2").

### 1. Clonar o Repositório

Clone este repositório para um local permanente no seu computador. (Ex: `C:\git\dotfiles-vscode` ou `~/git/dotfiles-vscode`).

``` bash
# Exemplo
git clone [https://github.com/seu-usuario/seu-repo.git](https://github.com/seu-usuario/seu-repo.git) C:\git\dotfiles-vscode

# Navega até a pasta 'User' do VS Code
cd %APPDATA%\Code\User

# Cria os links simbólicos (Substitua C:\git\dotfiles-vscode pelo seu caminho)
mklink settings.json C:\git\dotfiles-vscode\settings.json
mklink keybindings.json C:\git\dotfiles-vscode\keybindings.json
mklink /D snippets C:\git\dotfiles-vscode\snippets

Get-Content C:\git\dotfiles-vscode\extensions.list | ForEach-Object { code --install-extension $_ }
```
