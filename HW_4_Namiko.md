```  
wget -r -e robots=off -A 'wv???.rwl' -np -nd "https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/"
for filename in *.rwl
do
	echo $filename | cut -d . -f 1 >> sitename.txt
	head -n 1 $filename >> sitename.txt
done
```  


##### First, all the .rwl files for WV data, excluding files ending with "-noaa", will be downloaded from NOAA website. By using `-A wv???.rwl`, any .rwl files with a name of "wv + three-digit character" will be selected and any files with a name ending with "-noaa" will be excluded.  
###### At the beginning of the for loop, a variable `filename` is defined for all the downloaded .rwl files by listing `*.rwl`.  
###### In the first command of the loop, the filename is echoed and piped for the next `cut` treatment in order to extract only filenames. The following `cut -d . -f 1` specifies "." as a delimiter and selects the first column for output. This will create an output of filename before its' extension. The resulting output will be appended into `sitename.txt` by using `>>`.  
###### In the second command of the loop, the first line of the file is selected by `head -n 1` and will be appended into the same `sitename.txt` by using `>>`.  
