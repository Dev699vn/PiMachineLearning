#!/bin/bash

echo "Danh sach Group"
echo "-----------------------------------------------------"
cat GroupResource.txt
echo "-----------------------------------------------------"
read -p "Nhap vao ten ResourceGroup can xoa: " DelGroupLine
echo "Da xoa, Danh sach Group Hien tai con la..."
sed '/$DelGroupLine/d' ./GroupResource.txt

echo "Da xoa $DelGroupLine"
echo "DS con lai"
cat GroupResource.txt
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++"