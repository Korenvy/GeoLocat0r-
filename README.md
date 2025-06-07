![GeoLocat0r Logo](./file_000000004f6461f8b150cd58f9f5aaf3.png)
<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&pause=1000&color=F70000&center=true&vCenter=true&width=435&lines=GeoLocat0r+-+Bash+IP+Geolocator;by+Korenvy+aka+whois+%F0%9F%94%8E;Just+type+an+IP+or+domain+%F0%9F%93%8D" alt="Typing SVG" />

<p align="center">
  <img src="https://img.shields.io/badge/made%20with-bash-red?style=for-the-badge&logo=gnubash" />
  <img src="https://img.shields.io/badge/termux-compatible-green?style=for-the-badge&logo=android" />
  <img src="https://img.shields.io/github/license/korenvy/GeoLocat0r?style=for-the-badge" />
  <img src="https://img.shields.io/github/stars/korenvy/GeoLocat0r?style=for-the-badge&color=yellow" />
</p>

```
 ██████╗ ███████╗ ██████╗      ██╗      ██████╗      ██████╗ █████╗  ██████╗ 
██╔════╝ ██╔════╝██╔═══██╗     ██║     ██╔═══██╗    ██╔════╝██╔══██╗██╔════╝ 
██║  ███╗█████╗  ██║   ██║     ██║     ██║   ██║    ██║     ███████║██║  ███╗
██║   ██║██╔══╝  ██║   ██║     ██║     ██║   ██║    ██║     ██╔══██║██║   ██║
╚██████╔╝███████╗╚██████╔╝     ███████╗╚██████╔╝    ╚██████╗██║  ██║╚██████╔╝
 ╚═════╝ ╚══════╝ ╚═════╝      ╚══════╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝ ╚═════╝ 
               🌍 Geolocalizador IP/Dominio en Bash
```

# GeoLocat0r - Bash Edition

Herramienta de geolocalización para IPs y dominios, desarrollada en **Bash** para Termux, Kali Linux y cualquier distro Linux compatible con `curl` y `jq`.

---

## 🚀 Características principales

- ✅ Sin parámetros raros: solo ejecutás y escribís la IP o dominio.
- 🌐 Auto detección de IP pública si no ingresás nada.
- 🔒 Detecta IPs privadas y lo informa con contexto útil.
- 🎨 Salida con colores para mejor lectura.
- 🔧 Instalación automática de dependencias (`curl`, `jq`) si faltan.
- ⚙️ Compatible con Termux, Kali y más.

---

## 📥 Instalación

```bash
git clone https://github.com/Korenvy/GeoLocat0r-.git
cd GeoLocat0r-
chmod +x GeoLocat0r.sh*
```

---

## ⚙️ Uso

Ejecutá:

```bash
./GeoLocat0r.sh
```

Ingresá una IP o dominio, o dejalo vacío para geolocalizar tu IP pública.

---

## 📝 Ejemplo

```bash
Ingrese IP, dominio o deje vacío para su IP pública: 1.1.1.1

[+] IP: 1.1.1.1
[+] País: Australia
[+] Región: Queensland
[+] Ciudad: South Brisbane
[+] Código Postal: 4101
[+] Coordenadas: -27.4766, 153.0166
[+] ISP: Cloudflare
[+] Organización: APNIC and Cloudflare DNS Resolver project
[+] AS: AS13335 Cloudflare, Inc.
```

---

## 🧩 Requisitos

- `bash`
- `curl`
- `jq`
- `figlet` (opcional, solo para el banner)

> Si no tenés `curl` o `jq`, el script te los instala.

---

## ⚠️ Disclaimer

> Uso exclusivo con fines educativos. No nos hacemos responsables del mal uso.

---

## 👤 Autor

**Korenvy** (aka whois)  
GitHub: [korenvy](https://github.com/korenvy)  
Twitter: [@korenvy](https://twitter.com/korenvy)

---

💥 Si te sirvió, dejá una ⭐ en el repo
