#!/bin/bash

set -e

echo "======================================"
echo "Installation environnement Neovim Dev"
echo "======================================"

echo "Mise à jour du système..."
sudo pacman -Syu --noconfirm

echo "Installation dépendances système..."
sudo pacman -S --needed --noconfirm \
  neovim \
  git \
  nodejs \
  npm \
  ripgrep \
  fd \
  unzip \
  gcc \
  make \
  python \
  python-pip \
  luarocks

echo "Installation outils Node utiles..."
npm install -g \
  typescript \
  typescript-language-server \
  prettier \
  eslint \
  @angular/language-server

echo "Installation parsers Treesitter nécessaires..."
echo "(sera complété automatiquement au premier lancement de Neovim)"

echo "Installation terminée."

echo ""
echo "Prochaines étapes :"
echo ""
echo "1. Lancer Neovim"
echo ""
echo "nvim"
echo ""
echo "2. Installer les plugins"
echo ""
echo ":Lazy sync"
echo ""
echo "3. Installer les LSP"
echo ""
echo ":Mason"
echo ""

echo "======================================"
echo "Setup terminé"
echo "======================================"
