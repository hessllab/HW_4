```
#the first line of the code creates a new directory called tree_rings_data and changes the current directory to this new directory
#this line copies and saves in the current directory the files starting with 'wv' excluding the files with noaa in their name
#the for loop saves the name of the files without the extension and the first line on the data in the file into a text file called sitename

mkdir tree_rings_data && cd tree_rings_data
wget -r -e robots=off -A 'wv???.rwl' -np -nd -q https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
for sitename in *.rwl 
    do 
        echo $sitename | cut -d . -f 1 >> sitename.txt
        head -n 1 $sitename >> sitename.txt 
done
```
