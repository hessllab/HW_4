#### Make directory and retrieve data

```bash
mkdir NOAA_WV_Tree_Ring_Data #this change allows the script to work on any machine.
cd NOAA_WV_Tree_Ring_Data
wget -r -e robots=off -A 'wv???.rwl' -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```

The above code makes a new folder for the data (NOAA_WV_Tree_Ring_Data). Then, navigates to the to the new directory so that data downloaded with wget will go there. With the wget command, a series of flags are used to avoid catastrophic internet download and user annoyance, including `-np` and `-nd`. The `-A` flag allows a filter to only .rwl files from wv. In order to not download the NOAA file for each data set, ? are used to obtain only the intended files. #how?

___________________________________________

#### Loop

```bash
for sitename in wv???.rwl 
do
  echo $sitename | cut -c 1-5 >> sitename.txt
  head -n 1 $sitename >> sitename.txt
done
```

This loop takes each file that matches the wildcard critera. It echoes the name and cuts off the extension and pushes it into a new text file. Then, the first line of the file and appends the text file. It will continue until all files have gone through the loop and have pushed to the text file. 
