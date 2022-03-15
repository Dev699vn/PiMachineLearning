#!/bin/bash

echo "Danh sach Group"
cat GroupResource.txt

unset DelGroupLine
read -p "Nhap vao ten ResourceGroup can xoa: " DelGroupLine
echo "Da xoa, Danh sach Group Hien tai con la..."

sed '/$DelGroupLine/d' ./GroupResource.txt
echo "..."
echo "Da xoa $DelGroupLine"