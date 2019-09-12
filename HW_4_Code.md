# Shell Loop Exercise HW 4

The goal of this exercise was to write a set a commands to download specific files from the NOAA website. Then to treat the data
so that it could be seen which files do and do not contain headers. The desired output data was then put into a text file.

## Code to download the data from the NOAA website
```
wget -r -e robots=off -A 'wv'???.rwl -np -nd https://www1.ncdc.noaa.
gov/pub/data/paleo/treering/measurements/northamerica/usa/
```
The code above uses wget which is a tool to download files from the internet. In the line of code it uses the robot exclusion
option which helps wget acess the desired files easier. Files from WV were the desired target so we utilized -A 'wv' to pull only WV files, 
however some files contained "-noaa" and those were not desired. To exclude those files, the ? wildcard was used to only include the 
WV files that contained 3 characters after WV. Also in the code we used -np to make sure the command is not searching up more than one
directory and downloading additional files we do not want. Along with -np, -nd was used to ensure the directory strucutre of the website 
was not used. At the beginning of the code we used -r, which allows wget to recursivley download from the specificed website.

## Code to treat the downloaded data
```
for sitename in *.rwl
do
echo $sitename | cut -c 1-5 >> sitename.txt
head -n 1 $sitename >> sitename.txt
done
```
After the correct files were downloaded, we wrote a loop to see which files contained headers and which did not. The loop first
displays the sitename from each file and utilizes cut to remove the extension from the sitename. The data is appended into a 
text file named sitename.txt. The next command in the loop simiply prints the first line from the file and appends it again
into sitename.txt which will place it under the sitename that was previously placed into that text file. This loop will operate
on each of the 12 files downloaded from WV.
