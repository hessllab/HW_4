### Shell Loop Exercise
Problem: Dr. Hessl asked Cynthia to download all the tree ring data for the US from the International Tree Ring Data Bank (ITRDB) and provide a summary of the data available to compare to Cynthia's dissertation.  Cynthia is smart and has decided to solve the problem for WV first.

ITRDB files have a lot of metadata in the headers, but not all files have them and they are not always formatted the same way.  To help summarize the data, Cynthia wants to know which ones have headers and which do not.

Data: Accessible as text files from NOAA Maintained International Tree Ring Data Bank
https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/


#### Objective: Write a set of commands for the bash shell that successfully:
1)	Downloads all the _.rwl_ files for WV from _NOAA/paleoclimate_ url
Creates a file called _sitename.txt_ that is a list of the site names each followed by the first line of each file, which is often but not always a header with metadata, such as for `wv004`:
```
wv004
NERI   1 New River Gorge                                     PIVI  
```

#### Follow the following principles:
1)	Be sure to make the paths absolute so that I can reproduce the structure on my machine simply by running your code.   
2)	Code should be saved as a .txt file  
3)	Code blocks include only commands
4)  Comments are made around the text block in well-formatted markdown.      
5)	The fewer lines of code, the better the answer. Edit your answer until only what is required is present. 8 lines or less is possible.


#### Hints/Tips:
Use `wget` combined with a wildcard to get all the `.rwl` files for a state
Loop through those files to extract the header using `cut` and `head`

### Submit using the fork-clone-branch-commit-pull_request strategy.
