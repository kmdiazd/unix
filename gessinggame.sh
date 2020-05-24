echo "Por favor ingrese el número de archivos que hay en el directorio actual: "
b=0
while [[ b -eq 0 ]]
do
read a
echo " Usted ha seleccionado el número:" $a
if [[ a -eq $(ls | wc -l) ]]
then 
echo " El número $1 seleccionado es correcto, Felicitaciones!!"
b=1
elif [[ a -gt $(ls | wc -l) ]]
then
echo " El número seleccionado es mayor al número de archivos en el directorio"
else
echo " El número seleccionado es menor al número de archivos en el directorio"
fi
done

