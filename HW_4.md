#This command assigns the current directory, creates a directory to store the data, and sets that folder as the directory.
```bash
 #a better solution is to allow the program to make a directory whereever the user chooses (in current working directory)
mkdir TreeRingData
cd TreeRingData
```
#This command uses wget to retrieve the WV data using 3 question marks to only get the files with a 'wv' in the beginning and with only 3 characters afterwards to exclude the files ending in -noaa.
```bash
wget -r -e robots=off -A 'wv???.rwl' -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```
#This loop takes the files ending in .rwl and only prints the files names of each file using 'cut' to exclude the extension. It then prints only the first line of each file and sends them to sitename.txt. 
```bash
for filename in *.rwl
  do
    ls "$filename" | cut -c 1-5 >> sitename.txt | head -n 1 "$filename" >> sitename.txt
  done
  ```
  
#### Some other options on the loop:
```bash
for site in "wv"*.rwl
do
   echo $site | cut -d '.' -f 1  >> sitename.txt 
   head -n 1 $site >> sitename.txt
done
```
