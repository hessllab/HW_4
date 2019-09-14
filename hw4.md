# Homework 4
The purpose of this script is to...

## Part I: Downloading the data from the Internet
The following code downloads the files we need by using the wildcards * and ??? (since we only want file that have 3 characters after "wv"). 

```{Bash} 
mkdir -p HW4 #make a directory to save the data of the homework #this makes it work on any machine
wget -r -e robots=off -A 'wv???.rwl' -np -nd -q https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/ #code to retrieve the data
```

## Part II: Loop to retrieve the site information from the files. ##

The following loop finds the file name, deletes the file extension and then writes a line to the file `sitename.txt`. It then adds another line with the information of the first line of that file. The loop continues until all the files have been processed.  

```{Bash}
for filename in *.rwl
do
  echo $filename | cut -d . -f 1 >> sitename.txt
  head -1 $filename >> sitename.txt
done
```
