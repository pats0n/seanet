BEGIN { FS=","; ORS="" }

{ a=$NF; gsub(" ",",",a);  print a;  for (i=2; i<=NF-1; i++) print "," $i; print "\n"} 


END {}



