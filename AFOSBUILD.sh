rm -rf /opt/ANDRAX/pret

python3 -m venv /opt/ANDRAX/pret

source /opt/ANDRAX/pret/bin/activate

/opt/ANDRAX/pret/bin/pip3 install requests colorama pysnmp==4.4.12 pyasn1==0.6.0

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Pip install... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf $(pwd) /opt/ANDRAX/pret/package

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
rm -rf andraxbin
