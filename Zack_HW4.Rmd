---
title: "HW4"
output: html_document
---
Zack Grzywacz

To download all of the WV files from the NOAA website, we will use a wget that excludes all the "-noaa" files using three ? wildcards.

```{bash}
mkdir wvtrees
cd wvtrees
wget -r -e robots=off -A 'wv???.rwl' -np -nd https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```

We now have an absolute path to all of the WV .rwl files.
To create sitename.txt, we will use a for loop that will:
1. Print the filename of all files (without the extension)
2. Print the first line of each file

```{r}
for filename in wv*.rwl
 do
  ls "$filename" | cut -c 1-5 >> sitename.txt
  head -n 1 "$filename" >> sitename.txt
 done
```

The file sitename.txt now contains a list of sitenames followed by the first line of each file.