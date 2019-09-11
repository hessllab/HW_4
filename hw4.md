
First we fetch all the West Virginia data files from the US directory:
```bash
wget -r -q -A 'wv???.rwl' -e robots=off -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```
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