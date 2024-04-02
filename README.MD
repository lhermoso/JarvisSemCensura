## Instale o Jarvis em seu computador!

Com este guia, você poderá instalar e configurar o Jarvis, um modelo de linguagem poderoso baseado em Ollama, em seu próprio computador.

### Pré-requisitos

* Ter o Ollama instalado: [https://ollama.com/download](https://ollama.com/download)

### Passos

1. **Acesse o site do Ollama:** [https://ollama.com/download](https://ollama.com/download)
2. **Execute o seguinte comando no terminal:**

```
curl -fsSL https://ollama.com/install.sh | sh
```

3. **Edite o arquivo `Modelfile.dolphin.mistral`:**

   * Abra o arquivo com um editor de texto.
   * Altere a primeira linha para o nome correto do arquivo do modelo. Por exemplo, se o nome do arquivo for `dolphin-2.2.1-mistral-7b.Q8_0.gguf`, a primeira linha deve ser:

```
FROM ./dolphin-2.2.1-mistral-7b.Q8_0.gguf
```

4. **Crie o modelo Jarvis:**

```
ollama create jarvis -f Modelfile.dolphin.mistral
```

5. **Edite o arquivo `.bash_aliases`:**

   * Abra o arquivo com um editor de texto.
   * Adicione a seguinte linha no final do arquivo:

```
alias jarvis="/home/leonardo/Documentos/models/jarvis.sh"
```

   * **Substitua `/home/leonardo/Documentos/models` pelo caminho real onde você salvou o arquivo `jarvis.sh`.**

6. **Conceda permissão de execução ao arquivo `jarvis.sh`:**

```
chmod +x jarvis.sh
```

7. **Jarvis está pronto para uso!**

   * Digite `jarvis` no terminal para iniciar o Jarvis.
   * Você pode interagir com o Jarvis digitando suas perguntas e comandos.

### Dicas

* Siga o meu Instagram para mais dicas e tutoriais: [https://www.instagram.com/leoohermoso/](https://www.instagram.com/leoohermoso/)

### Observações

* Este guia é para o sistema operacional Linux. Se você estiver usando outro sistema operacional, consulte a documentação do Ollama para obter instruções específicas.
* O nome do arquivo do modelo pode variar dependendo da versão do Ollama que você está usando.

### Divirta-se com o Jarvis!
