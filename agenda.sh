#!/bin/bash
while :; do
  clear
  echo "Menu:"
  echo "1) Adicionar contato"
  echo "2) Pesquisar"
  echo "3) Sair"
  read -r -p "Opção desejada: " opc
  case $opc in
  1)
    clear
    echo "1) Adicionar contato"
    read -r -p "Nome: " nome
    read -r -p "Telefone: " tel
    echo "$nome - $tel" >>./AgendaTelefonica.txt
    echo "Contato adicionado !"
    sleep 1
    clear
    ;;
  2)
    clear
    echo "2) Pesquisar"
    echo "1) Nome"
    echo "2) Telefone"
    read -r -p "Pesquisar por: " opcPesq
    case $opcPesq in
    1)
      clear
      read -r -p "Digite o nome: " nome
      clear
      grep -i "$nome" AgendaTelefonica.txt
      sleep 5
      clear
      ;;
    2)
      clear
      read -r -p "Digite o Telefone: " tel
      clear
      grep -i "$tel" AgendaTelefonica.txt
      sleep 5
      clear
      ;;
    *)
      echo "Opção Inválida, digite novamente"
      ;;
    esac
    ;;
  *)
    clear
    read -r -p "Desejar sair? (s/n) " resp
    if [ "$resp" == "s" ]; then
      clear
      echo "Saindo..."
      sleep 1
      clear
      exit 0
    fi
    ;;
  esac
done
