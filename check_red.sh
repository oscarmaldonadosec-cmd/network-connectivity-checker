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
