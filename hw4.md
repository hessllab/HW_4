#### Title
The purpose of this script is to...

##### wget
First we fetch all the West Virginia data files from the US directory:
```bash
wget -r -q -A 'wv???.rwl' -e robots=off -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```
##### for loop
Then we compile a list of each file and its first line:
```bash
for file in *.rwl
do
	# Record the name of the file (without the extension)
	echo $file | cut -d "." -f 1 >> sitename.txt
	# Record the first line of the file
	head -n 1 $file >> sitename.txt
done
```

##### Product: _sitename.txt_  
```
wv001
020011  1796   107   100   107   131                                    
wv002
065031  1793   127   115   105   152   159   231   159                  
wv003
067011  1876   331   225   550   437
wv004
NERI   1 New River Gorge                                     PIVI
```
