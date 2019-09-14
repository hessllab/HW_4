### Shell Loop Exercise

```
wget -r -e robots=off -A 'wv???.rwl' -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```

This command does quite a lot. It recursively downloads the files from internet using the link provided, tells the source that we are not a robot, and specifies that the files we want include only west virginia locations that are followed by three characters and an .rwl extension. It also specifies that we wish to look at only the files within this directory (though I wish we could include wv013 and wv014) and that we want only the files to be copied - not the directory structure.

```
for sitename in wv???.rwl
do
    ls $sitename | cut -c 1-5 >> sitename.txt #works, cut -d '.' adds flexibility - what if site name is more chars?
    head -n 1 $sitename >> sitename.txt
done
```

This loop indicates that we want to run the 12 locations retrieved from the previous comand, referred to as 'sitename', that are found within the rwl files containing wv followed by three characters. Each of the locations are displayed, piped, and cut so that the extensions are removed and only pertinant identifiers remain. The results are then displayed in a .txt file we have named 'sitename'. The next command in the loop selects only the first line of info for each wv location and displays the results in the previously mentioned sitename.txt file.
