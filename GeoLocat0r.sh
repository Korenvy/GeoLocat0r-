#!/bin/bash

# GeoLocat0r - Herramienta de Geolocalización por IP
# Compatible con Termux y Kali Linux

clear
echo -e "\033[1;31m"
figlet -c GeoLocat0r
echo -e "\033[1;37m            by @Korenvy | Bash Edition\n"

# Requiere: curl, jq
check_dependencies() {
  for pkg in curl jq; do
    if ! command -v $pkg &> /dev/null; then
      echo -e "\033[1;31m[!] Falta: $pkg\033[0m"
      echo -e "\033[1;33m[*] Instalando $pkg...\033[0m"
      pkg install -y $pkg || sudo apt install -y $pkg
    fi
  done
}

is_private_ip() {
  local ip=$1
  [[ $ip =~ ^10\. ]] || [[ $ip =~ ^192\.168\. ]] || [[ $ip =~ ^172\.(1[6-9]|2[0-9]|3[0-1])\. ]]
}

geolocate_ip() {
  local ip=$1
  local json=$(curl -s "http://ip-api.com/json/$ip?fields=status,message,country,regionName,city,zip,lat,lon,isp,org,as,query")

  if [[ $(echo "$json" | jq -r '.status') != "success" ]]; then
    echo -e "\033[1;31m[!] Error: $(echo "$json" | jq -r '.message')\033[0m"
    exit 1
  fi

  echo -e "\033[1;32m[+] IP: $(echo "$json" | jq -r '.query')\033[0m"
  echo "[+] País: $(echo "$json" | jq -r '.country')"
  echo "[+] Región: $(echo "$json" | jq -r '.regionName')"
  echo "[+] Ciudad: $(echo "$json" | jq -r '.city')"
  echo "[+] Código Postal: $(echo "$json" | jq -r '.zip')"
  echo "[+] Coordenadas: $(echo "$json" | jq -r '.lat'), $(echo "$json" | jq -r '.lon')"
  echo "[+] ISP: $(echo "$json" | jq -r '.isp')"
  echo "[+] Organización: $(echo "$json" | jq -r '.org')"
  echo "[+] AS: $(echo "$json" | jq -r '.as')"
}

main() {
  check_dependencies

  echo -ne "\033[1;36mIngrese IP, dominio o deje vacío para su IP pública: \033[0m"
  read target

  if [[ -z "$target" ]]; then
    target=$(curl -s ifconfig.me)
    echo -e "\033[1;33m[i] Usando tu IP pública: $target\033[0m"
    geolocate_ip "$target"
    exit
  fi

  if is_private_ip "$target"; then
    echo -e "\033[1;33m[i] IP privada detectada: $target\033[0m"
    echo -e "[+] Tipo: Privada/local"
    echo -e "[+] Uso: Redes internas (LAN, WiFi, etc.)"
    echo -e "[i] Obteniendo tu IP pública para geolocalización real..."

    public_ip=$(curl -s ifconfig.me)
    echo -e "[+] Tu IP pública: $public_ip"
    geolocate_ip "$public_ip"
    exit
  fi

  geolocate_ip "$target"
}

main
