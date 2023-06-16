#!/bin/bash

Mostrar_Menu() {
  clear
  echo "Menu:"
  echo "1) Adicionar contato"
  echo "2) Pesquisar"
  echo "3) Sair"
}

Adicionar_Contato() {
  clear
  echo "1) Adicionar contato"
  read -r -p "Nome: " nome
  read -r -p "Telefone: " tel
  echo "$nome - $tel" >>./AgendaTelefonica.txt
  echo "Contato adicionado !"
  sleep 1
  clear
}

Pesquisar_Por_Nome() {
  clear
  read -r -p "Digite o nome: " nome
  clear
  grep -i "$nome" AgendaTelefonica.txt
  sleep 5
  clear
}

Pesquisar_Por_Telefone() {
  clear
  read -r -p "Digite o Telefone: " tel
  clear
  grep -i "$tel" AgendaTelefonica.txt
  sleep 5
  clear
}

Pesquisar_Contato() {
  clear
  echo "2) Pesquisar"
  echo "1) Nome"
  echo "2) Telefone"
  read -r -p "Pesquisar por: " opcPesq
  case $opcPesq in
  1)
    Pesquisar_Por_Nome
    ;;
  2)
    Pesquisar_Por_Telefone
    ;;
  *)
    echo "Opção Inválida, digite novamente"
    ;;
  esac
}

Sair() {
  clear
  read -r -p "Desejar sair? (s/n) " resp
  if [ "$resp" == "s" ]; then
    clear
    echo "Saindo..."
    sleep 1
    clear
    exit 0
  fi
}

while :; do
  clear
  Mostrar_Menu
  read -r -p "Opção desejada: " opc
  case $opc in
  1)
    Adicionar_Contato
    ;;
  2)
    Pesquisar_Contato
    ;;
  3)
    Sair
    ;;
  *)
    echo "Opção Inválida, digite novamente"
    ;;
  esac
done
