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



cat << 'EOF' > check_red.sh
#!/bin/bash
# Diagnostico de red y conectividad

echo "=== DIAGNOSTICO DE RED ==="
echo "Fecha: $(date)"
echo ""

echo "1. Comprobando conexion a Internet (1.1.1.1)..."
if ping -c 2 1.1.1.1 > /dev/null 2>&1; then
    echo "[OK] Conexion a Internet activa."
else
    echo "[FALLO] Sin conexion a Internet."
fi
echo ""

echo "2. Comprobando resolucion DNS (google.com)..."
if ping -c 2 google.com > /dev/null 2>&1; then
    echo "[OK] Resolucion DNS operativa."
else
    echo "[FALLO] Fallo en resolucion DNS."
fi
echo ""
echo "=== FIN DEL TEST ==="
EOF
