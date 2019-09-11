```bash
mkdir ../data_shell/data/HW_4
cd ../data_shell/data/HW_4
wget -r -e robots=off -A 'wv???.txt' -np -nd -q https://www1.ncdc.noaa.gov/pub/data/paleo/treering/measurements/northamerica/usa/
```

```bash
for sitename in wv???.rwl
do
  echo $sitename | cut -c 1-5 >> sitename.txt
  head -n 1 $sitename >> sitename.txt
done
```
