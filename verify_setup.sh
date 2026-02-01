#!/bin/bash

echo "=== Hospital Management System - Setup Verification ==="
echo ""

echo "1. Checking Java..."
if command -v java &> /dev/null; then
    echo "   ✅ Java found: $(java --version | head -n 1)"
else
    echo "   ❌ Java not found"
fi

echo ""
echo "2. Checking Python..."
if command -v python &> /dev/null; then
    echo "   ✅ Python found: $(python --version)"
else
    echo "   ❌ Python not found"
fi

echo ""
echo "3. Checking PostgreSQL..."
if command -v psql &> /dev/null; then
    echo "   ✅ PostgreSQL found: $(psql --version)"
else
    echo "   ❌ PostgreSQL not found"
fi

echo ""
echo "4. Checking Git..."
if command -v git &> /dev/null; then
    echo "   ✅ Git found: $(git --version)"
else
    echo "   ❌ Git not found"
fi

echo ""
echo "5. Checking Project Structure..."
if [ -d "auth-service" ] && [ -d "main-api" ]; then
    echo "   ✅ Project structure exists"
else
    echo "   ❌ Project structure incomplete"
fi

echo ""
echo "=== Setup Verification Complete ==="
