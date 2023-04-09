#!/usr/bin/env bash
#Author: Wander Pereira

# Função que verifica se o rsync está instalado
function check_rsync {
    if command -v rsync >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Verifica se o rsync está instalado
if ! check_rsync; then
    echo "O rsync não está instalado em seu sistema."
    read -p "Você deseja instalar o rsync agora? (s/n): " resposta

    if [ "$resposta" == "s" ] || [ "$resposta" == "S" ]; then
        # Verifica o gerenciador de pacotes usado pelo sistema
        if command -v apt >/dev/null 2>&1; then
            sudo apt update
            sudo apt install -y rsync
        elif command -v yum >/dev/null 2>&1; then
            sudo yum update
            sudo yum install -y rsync
        elif command -v pacman >/dev/null 2>&1; then
            sudo pacman -S rsync
        else
            echo "Não foi possível determinar o gerenciador de pacotes do sistema. Instale o rsync manualmente e execute o script novamente."
            exit 1
        fi
    else
        echo "O rsync é necessário para a execução deste script. Instale o rsync manualmente e execute o script novamente."
        exit 1
    fi
fi

# Lendo os caminhos e escolhendo a opcao
echo "Digite o caminho completo do arquivo que deseja copiar/mover:"
read origem

echo "Digite o caminho completo do diretório de destino:"
read destino

echo "Digite 'c' para copiar ou 'm' para mover o arquivo:"
read opcao

#execultando a copia/mover
if [ "$opcao" == "c" ]; then
    rsync --progress "$origem" "$destino"
    echo "Cópia concluída. Resumo:"
    rsync --stats --human-readable --itemize-changes "$origem" "$destino"
elif [ "$opcao" == "m" ]; then
    rsync --progress --remove-source-files "$origem" "$destino"
    echo "Movimento concluído. Resumo:"
    rsync --stats --human-readable --itemize-changes "$destino/$(basename $origem)" "$destino"
else
    echo "Opção inválida. Saindo."
    exit 1
fi
