
#!/usr/bin/perl
print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
  print "<h1>Dime que mes quieres saber</h1>";
  print "<form name=\"search\" method=\"get\">";
  print "<input type=\"text\" name=\"prefijo\">";
  print "<input type=\"submit\" value\"Buscar\" />";
}else {
  open F, "/tmp/calendario";
  while(<F>) {
    chomp;
     @mes=split(":");
     $ar{$mes[0]}=$prefijo[1];
  }
  @arGet=split("=",$ENV{'QUERY_STRING'});
  print "El mes seleccionado es; $ar{$arGet[1]}<br>";
}
