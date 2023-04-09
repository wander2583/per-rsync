## Contatos:
<div>
<a href="https://www.youtube.com/@wanderleipereira8030" target="_blank"><img src="https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white" target="_blank"></a>
<a href="https://instagram.com/wanderlei.rodrigo" target="_blank"><img src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" target="_blank"></a>
<a href="https://www.twitch.tv/wander2583" target="_blank"><img src="https://img.shields.io/badge/Twitch-9146FF?style=for-the-badge&logo=twitch&logoColor=white" target="_blank"></a>
<a href = "mailto:wanderlei2583@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
<a href="https://www.linkedin.com/in/wanderleirpereira" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a>   
</div>

# Script para Copiar ou Mover ultilizando Rsync. 

Neste script aprimorado, adicionamos uma função `check_rsync` que verifica se o rsync está instalado no sistema. Em seguida, adicionamos uma verificação no início do script para verificar se o rsync está instalado e, caso contrário, perguntamos ao usuário se ele deseja instalar o rsync.

Se o usuário optar por instalar o rsync, o script verifica o gerenciador de pacotes do sistema e instala o rsync automaticamente. Se o rsync já estiver instalado, o script continua com a execução normal.

Após a verificação da instalação do rsync, o script continua solicitando ao usuário o caminho completo do arquivo que ele deseja copiar/mover, o caminho completo do diretório de destino e se ele deseja copiar ou mover o arquivo.

Em seguida, o script usa o comando rsync para copiar ou mover o arquivo, exibindo uma barra de progresso durante o processo. Ao finalizar a operação, o script exibe um resumo do que foi copiado ou movido usando o comando rsync `--stats --human-readable --itemize-changes`.

Dessa forma, este script aprimorado permite que o usuário escolha o local de destino do arquivo, mostra a barra de progresso durante a operação e fornece um resumo ao terminar, além de verificar a instalação do rsync e, se necessário, instalar automaticamente.
