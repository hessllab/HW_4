### Jaimee Pyron HW 4

```bash
wget -r -e robots=off -A 'wv???.rwl' -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
for files in *.rwl
  do
  echo "$files" | cut -c -5 >> sitenames.txt
  head -n 1 $files >> sitenames.txt
done
```


Code Walkthrough:
1. wget function is used to pull all .rwl files from url that begin with "wv" and have any 3 subsquent characters
2. iterates through all .rwl files in current directory 
3. prints file name, cuts it to the first 5 characters, and appends it to sitenames.txt
4. appends the first line in file to sitenames.txt
