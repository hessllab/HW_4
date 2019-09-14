This script creates...The first line of the code creates a new directory called tree_rings_data and changes the current directory to this new directory.  the second line copies and saves in the current directory the files starting with 'wv' excluding the files with noaa in their name. The for loop saves the name of the file without the extension and the first line on the data in the file into a text file called sitename.

```bash
mkdir tree_rings_data && cd tree_rings_data
wget -r -e robots=off -A 'wv???.rwl' -np -nd -q https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/ 

for sitename in *.rwl 
    do 
        echo $sitename | cut -d . -f 1 >> sitename.txt
        head -n 1 $sitename >> sitename.txt 
done
```
The script produces a file of site names followed by the first line (header) of the file:

```
wv001
020011  1796   107   100   107   131                                    
wv002
065031  1793   127   115   105   152   159   231   159                  
wv003
067011  1876   331   225   550   437
wv004
NERI   1 New River Gorge                                     PIVI               
wv005
CKMKBK 1 Cedar/Moser/Bible Knobs                             JUVI               
```
