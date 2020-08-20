#!/bin/bash
while :
do
    clear
    echo "Menu:"
    echo "1) Adicionar contato"
    echo "2) Pesquisar"
    echo "3) Sair"
    echo ""
    echo "Opção desejada: "
    read opc
    case $opc in
        1)
            clear
            echo "1) Adicionar contato"
            echo "Nome: "
            read nome
            echo "Telefone: "
            read tel
            echo $nome " - " $tel >> AgendaTelefonica.txt
            echo "Contato adicionado !"
            sleep 1
            clear
        ;;
        2) clear
            echo "2) Pesquisar"
            echo "Pesquisar por: "
            echo "1) Nome"
            echo "2) Telefone"
            read opcPesq
            case $opcPesq in
                1)
                    echo "Digite o nome: "
                    read nome
                    clear
                    grep -i $nome AgendaTelefonica.txt
                    sleep 5
                    clear
                ;;
                2)
                    echo "Digite o Telefone: "
                    clear
                    read tel
                    grep -i $tel AgendaTelefonica.txt
                    sleep 5
                    clear
                ;;
                *)
                    echo "Opção Inválida, digite novamente"
                ;;
            esac
        ;;
        *) clear
            echo "Desejar sair? (s/n)"
            read resp
            if [ $resp == "s" ]
            then
                clear
                echo "Saindo..."
                sleep 1
                clear
                exit 0
            fi
        ;;
    esac
done
