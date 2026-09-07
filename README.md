# Network Connectivity Checker

Script en Bash para la comprobación rápida del estado de conexión a Internet y resolución de nombres de dominio (DNS) en sistemas Linux.

## Funcionalidades
* Diagnóstico de salida a la red externa mediante ICMP ping a servidores públicos (Cloudflare 1.1.1.1).
* Validación de funcionamiento de servidores DNS verificando resolución de nombres de dominio.
* Salidas con estados comprensibles ([OK] / [FALLO]) para soporte técnico rápido.

## Cómo Ejecutar
1. Clonar el repositorio:
   git clone https://github.com/oscarmaldonadosec-cmd/network-connectivity-checker.git
2. Entrar a la carpeta:
   cd network-connectivity-checker
3. Dar permisos de ejecución:
   chmod +x check_red.sh
4. Ejecutar el script:
   ./check_red.sh

