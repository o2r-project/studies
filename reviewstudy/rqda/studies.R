library(RQDA)
RQDA()

1.
#same as manually exporting in rqda. Can select all codings with STR A and get html out.
#nice to see, but hard to work with
exportCodings(file = "Exported Codings.html", Fid =NULL,
              order = "ftime", append =TRUE, codingTable= "coding")

2.
#exports an html-file of the text document that user worked on. Codings are not
#highlighted with colours though. Same as maually exporting html of each document in rqda.
exportCodedFile(file= "Reviews ESSD Copernicus.html" ,fid=1, closeAfter = F)

3.
#Table, with Index, each code, filename, length, xy
#good to work with, not sure if all information included that is necessary
getCodingTable()
getcodingtable=getCodingTable()
write.csv(getcodingtable, file="codingtable.csv")

4.
# csv exportable data table containing information whether textfile contains certain code or not
#1=yes, contains this code, 0= does not contain this code.
filebycodes=filesByCodes()
write.csv(filebycodes, file="filecontaincode.csv")

