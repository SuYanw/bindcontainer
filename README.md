# Simples container DNS
Esse é um container simples de DNS recursivo pronto para uso, você pode usar em seu ISP que irá funcionar corretamente.
<br /><br />
## Instalação:
Você deve ter uma máquina já com docker instalado, caso não tiver, pode utilizar passo a passo que está no site oficial: https://docs.docker.com/engine/install/

Após isso você pode digitar os comandos:
```
docker pull glaubertsuyan/bind9:1.0
docker run -itd --restart=always --name dns glaubertsuyan/bind9:1.0
```
<br /><br />
e conferir se seu DNS está funcionando:
```
dig globo.com @ip_do_seu_dns
```

