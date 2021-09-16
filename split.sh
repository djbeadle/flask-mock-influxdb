#!/bin/bash

grep "danielsroom" log.csv > danielsroom.csv;
echo "datetime,db,location,sensor,region,measurement,reading" > danielsroom-fahrenheit.csv;
grep "fahrenheit" danielsroom.csv >> danielsroom-fahrenheit.csv;
echo "datetime,db,location,sensor,region,measurement,reading" > danielsroom-rh.csv;
grep "humidity" danielsroom.csv >> danielsroom-rh.csv;
rm danielsroom.csv;

grep "livingroom" log.csv > livingroom.csv
echo "datetime,db,location,sensor,region,measurement,reading" > livingroom-fahrenheit.csv;
grep "fahrenheit" livingroom.csv >> livingroom-fahrenheit.csv;
echo "datetime,db,location,sensor,region,measurement,reading" > livingroom-rh.csv;
grep "humidity" livingroom.csv >> livingroom-rh.csv;
rm livingroom.csv;
