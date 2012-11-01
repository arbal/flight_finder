#!/usr/bin/perl -w

use CGI;


$HTML_SPACE = " "; # "&nbsp;"
$HTML_NEWLINE = "<br>";
$q = CGI::new();
$data = $q->param("data");
$example = $q->param("example");
$reset = $q->param("reset");
print $q->header();
print "<script></script>";
print "<h1 align=center>RFTRACE XML EXTRACTOR</h1><form method=post><textarea cols=106 rows=32 name=data>";

if ( ! $example)
{
  if ( ! $reset)
  {
  print "Cut and paste your trace here.  It should be exactly as wide as this textbox (106 characters).";
  }
	else 
	{
	 $data = "";
	}
}
else
{
  print <<END_OF_GOOGLE;
0000 3765640D0A436F6E74656E742D547970653A20746578742F786D6C0D0A436F6E     7ed..Content-Type: text/xml..Con
0001 74656E742D4C6F636174696F6E3A20687474703A2F2F7777772E676F6F676C65     tent-Location: http://www.google
0002 2E636F6D2F0D0A5365742D436F6F6B69653A2053455353494F4E49443D363042     .com/..Set-Cookie: SESSIONID=60B
0003 4F583B4D61782D4167653D3433323030300D0A4E6F76617272612D506167652D     OX;Max-Age=432000..Novarra-Page-
0004 49643A203136313433313133310D0A4E6F76617272612D5552493A2068747470     Id: 161431131..Novarra-URI: http
0005 3A2F2F7777772E676F6F676C652E636F6D2F0D0A436F6E74656E742D4C656E67     ://www.google.com/..Content-Leng
0006 74683A20313833300D0A0D0A3C6F62626D6C2062617365687265663D22687474     th: 1830....<obbml basehref="htt
0007 703A2F2F7777772E676F6F676C652E636F6D2F223E3C686561643E3C7469746C     p://www.google.com/"><head><titl
0008 653E476F6F676C653C2F7469746C653E3C2F686561643E3C626F6479206C696E     e>Google</title></head><body lin
0009 6B3D222330303030636322206267636F6C6F723D22236666666666662220636F     k="#0000cc" bgcolor="#ffffff" co
0010 6C6F723D22233030303030302220766C696E6B3D2223353531613862223E3C70     lor="#000000" vlink="#551a8b"><p
0011 20616C69676E3D2263656E746572223E3C7461626C6520636F6C733D22312220      align="center"><table cols="1" 
0012 726F77733D22312220626F726465723D2230222063656C6C70616464696E673D     rows="1" border="0" cellpadding=
0013 2230222063656C6C73706163696E673D2230223E3C74723E3C74643E3C696D67     "0" cellspacing="0"><tr><td><img
0014 20703D22323922206865696768743D22313130222077696474683D2232373622      p="29" height="110" width="276"
0015 20616C743D22476F6F676C6522207372633D222F696D616765732F6C6F676F2E      alt="Google" src="/images/logo.
0016 676966222F3E3C2F74643E3C2F74723E3C2F7461626C653E3C62722F3E3C7461     gif"/></td></tr></table><br/><ta
0017 626C6520636F6C733D2231322220726F77733D22322220626F726465723D2230     ble cols="12" rows="2" border="0
0018 222063656C6C70616464696E673D2230222063656C6C73706163696E673D2230     " cellpadding="0" cellspacing="0
0019 223E3C74723E3C74643E3C2F74643E3C7464206267636F6C6F723D2223333336     "><tr><td></td><td bgcolor="#336
0020 366363223E3C623E3C666F6E7420636F6C6F723D2223666666666666223E5765     6cc"><b><font color="#ffffff">We
0021 623C2F666F6E743E3C2F623E3C2F74643E3C74643E3C2F74643E3C7464206267     b</font></b></td><td></td><td bg
0022 636F6C6F723D2223656665666566223E3C666F6E7420636F6C6F723D22233030     color="#efefef"><font color="#00
0023 30306363223E3C6120703D2236362220687265663D222F696D6768703F686C3D     00cc"><a p="66" href="/imghp?hl=
0024 656E267461623D77692669653D5554462D38223E496D616765733C2F613E3C2F     en&tab=wi&ie=UTF-8">Images</a></
0025 666F6E743E3C2F74643E3C74643E3C2F74643E3C7464206267636F6C6F723D22     font></td><td></td><td bgcolor="
0026 23656665666566223E3C666F6E7420636F6C6F723D2223303030306363223E3C     #efefef"><font color="#0000cc"><
0027 6120703D2238342220687265663D222F67727068703F686C3D656E267461623D     a p="84" href="/grphp?hl=en&tab=
0028 77672669653D5554462D38223E47726F7570733C2F613E3C2F666F6E743E3C2F     wg&ie=UTF-8">Groups</a></font></
0029 74643E3C74643E3C2F74643E3C7464206267636F6C6F723D2223656665666566     td><td></td><td bgcolor="#efefef
0030 223E3C666F6E7420636F6C6F723D2223303030306363223E3C6120703D223130     "><font color="#0000cc"><a p="10
0031 322220687265663D222F64697268703F686C3D656E267461623D77642669653D     2" href="/dirhp?hl=en&tab=wd&ie=
0032 5554462D38223E4469726563746F72793C2F613E3C2F666F6E743E3C2F74643E     UTF-8">Directory</a></font></td>
0033 3C74643E3C2F74643E3C7464206267636F6C6F723D2223656665666566223E3C     <td></td><td bgcolor="#efefef"><
0034 666F6E7420636F6C6F723D2223303030306363223E3C6120703D223132302220     font color="#0000cc"><a p="120" 
0035 687265663D222F6E777368703F686C3D656E267461623D776E2669653D555446     href="/nwshp?hl=en&tab=wn&ie=UTF
0036 2D38223E4E6577733C2F613E3C2F666F6E743E3C2F74643E3C74643E3C2F7464     -8">News</a></font></td><td></td
0037 3E3C2F74723E3C74723E3C746420636F6C7370616E3D22313222206267636F6C     ></tr><tr><td colspan="12" bgcol
0038 6F723D2223333336366363223E3C2F74643E3C2F74723E3C2F7461626C653E3C     or="#3366cc"></td></tr></table><
0039 62722F3E3C7461626C6520636F6C733D22332220726F77733D2231222063656C     br/><table cols="3" rows="1" cel
0040 6C70616464696E673D2230222063656C6C73706163696E673D2230223E3C7472     lpadding="0" cellspacing="0"><tr
0041 3E3C74643E3C2F74643E3C74643E3C696E70757420703D22313631222076616C     ><td></td><td><input p="161" val
0042 75653D2222206D61786C656E6774683D22323536222073697A653D2235352220     ue="" maxlength="256" size="55" 
0043 6E616D653D2271222F3E3C62722F3E3C696E70757420703D2231363722207479     name="q"/><br/><input p="167" ty
0044 70653D227375626D6974222076616C75653D22476F6F676C6520536561726368     pe="submit" value="Google Search
0045 22206E616D653D2262746E47222F3E3C696E70757420703D2231373122207479     " name="btnG"/><input p="171" ty
0046 70653D227375626D6974222076616C75653D2249276D204665656C696E67204C     pe="submit" value="I'm Feeling L
0047 75636B7922206E616D653D2262746E49222F3E3C2F74643E3C74643E95203C61     ucky" name="btnI"/></td><td>. <a
0048 20703D223138312220687265663D222F616476616E6365645F7365617263683F      p="181" href="/advanced_search?
0049 686C3D656E223E416476616E636564205365617263683C2F613E3C62722F3E95     hl=en">Advanced Search</a><br/>.
0050 203C6120703D223138362220687265663D222F707265666572656E6365733F68      <a p="186" href="/preferences?h
0051 6C3D656E223E507265666572656E6365733C2F613E3C62722F3E95203C612070     l=en">Preferences</a><br/>. <a p
0052 3D223139312220687265663D222F6C616E67756167655F746F6F6C733F686C3D     ="191" href="/language_tools?hl=
0053 656E223E4C616E677561676520546F6F6C733C2F613E3C2F74643E3C2F74723E     en">Language Tools</a></td></tr>
0054 3C2F7461626C653E3C62722F3E3C6120703D223139382220687265663D222F61     </table><br/><a p="198" href="/a
0055 64732F223E41647665727469736520776974682055733C2F613E202D203C6120     ds/">Advertise with Us</a> - <a 
0056 703D223230322220687265663D222F73657276696365732F223E427573696E65     p="202" href="/services/">Busine
0057 737320536F6C7574696F6E733C2F613E202D203C6120703D2232303622206872     ss Solutions</a> - <a p="206" hr
0058 65663D222F6F7074696F6E732F223E53657276696365732026616D703B20546F     ef="/options/">Services &amp; To
0059 6F6C733C2F613E202D203C6120703D223231302220687265663D222F61626F75     ols</a> - <a p="210" href="/abou
0060 742E68746D6C223E4A6F62732C2050726573732C2026616D703B2048656C703C     t.html">Jobs, Press, &amp; Help<
0061 2F613E3C703E26636F70793B3230303320476F6F676C65202D20536561726368     /a><p>&copy;2003 Google - Search
0062 696E6720332C3330372C3939382C373031207765622070616765733C2F703E3C     ing 3,307,998,701 web pages</p><
0063 2F703E3C2F626F64793E3C2F6F62626D6C3E0D0A                             /p></body></obbml>..    
END_OF_GOOGLE
}

print "</textarea><br><input type=submit value='Extract and Clean XML !'>";
print "<input type=submit name=example value='Show me example data !'>";
print "<input type=submit name=reset value=Reset></form>";
print "<script>document.forms[0].elements[0].select();</script>";

print "<a href='mailto:jwerwath\@novarra.com'>Comments, complaints, suggestions, bugs, etc.</a><hr>";

$debug = "";


if ($data)
{
   @lines = split(/\n/,$data);
   print "LINES=" . $#lines;
}
else
{
  print "NO DATA";
}
#exit 0;

$xml = "";
if ($data)
{
  @lines = split(/\n/,$data);
  

  #      . . . . 5 . . . . 0 . . . . 5 . . . . 0 . . . . 5 . . . . 0 . .
  #0000 3C6F62626D6C2062617365687265663D22687474703A2F2F7777772E73636973     <obbml basehref="http://www.scis

$parsingOBBML = 0;
$xml = "";
$out = "";

foreach (@lines)
{
   if (/([0-9A-F]{4,4}) ([0-9A-F ]{64,64})     (.+)/)
   {

        $address = $1;
        $data = 2;
        $content = $3;
	   
#$out =  $out . "LINE: $_" . $HTML_NEWLINE ;
	if (($1 == "0000"))# && ($content =~ /obbml/))
	{
		$parsingOBBML = 1;
		#$out =  $out . "FOUND START OF XML !!! in $3" . $HTML_NEWLINE ;
	}

	if ($parsingOBBML)
	{
                  $xml = $xml . $content;
	}
        if ($address == "0000")
	{
		#$out = $out . ">>>XML after start is $xml $parsingOBBML" . $HTML_NEWLINE  . "Line is: $_" . $HTML_NEWLINE ;
	}
			
			
   }
   else #we are not parsing any obbml at this point
   {
	 	

		
		$out = $out . $_;
   }#endif

}#end foreach

if ($parsingOBBML)
{
			$out = $out . nicexml($xml);
			$xml = "";
			$parsingOBBML = 0;
}


  

}#endif data


print "<hr>";

if ($data)
{
   print "<pre>$out</pre>";
}



sub nicexml
{
   my $xml = shift;

   my $output = "";
  #each tag or end tag begins on new line.
  $xml =~ s/</\n</g;
  

  @xmllines = split(/\n/,$xml);
  $indent = 0;
  $output = "";
 foreach (@xmllines)
  {
   
    #---START TAG
    if (/^<\w/)
    {
       $indent = $indent + 1;
    }

    

    

    #--- Do indenting
    foreach $i (0 .. $indent)
    {
      $_ = $HTML_SPACE . $_; 
    }


    #--- Debug indenting
    #$_ = $indent . ":" . $_ ;
    


   

    if (/\/>/) #self-closing tag
    {
        $indent = $indent - 1;
    }

    elsif (/<\//)
    {
       $indent = $indent - 1;
      
    }

    #---Make < and > HTML printable
    s/</&lt;/;
    s/>/&gt;/;
    s/\r//g;
    s/\s/ /g;
    

 #--- Add what we have to total output.
    $output = $output . "$_". "\n";

    

  #if end tag

  }#end foreach
  return $output;
}#end sub




