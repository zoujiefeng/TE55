########################################################################################################################
#
# Description: Extracting QAC messages from all the QAC reports in the same folder with this file.
# 
#
########################################################################################################################
#
# perl QAC_Extraction.pl
#
########################################################################################################################
# $Archive::                                                                                                           $
# $Revision::   1.0                  $$Author::   Ruiyan.Liu                    $$Date::   22 May 2014 12:00:00        $
# $Revision::   1.1                  $$Author::   Zejing.Liu                    $$Date::   29 Jun 2024 12:00:00        $
########################################################################################################################

use strict;
use warnings;
use Cwd;
use File::Basename;
use Data::Dumper;

my $TsGenorVersion = "0.2";

# Configuration
#-----------------------------------------------------------------------------------------------------------------------
my $Bswinputdir = getcwd;
$Bswinputdir = dirname($Bswinputdir); # Return last Dir
$Bswinputdir = dirname($Bswinputdir); # Return again,for enter bswsrv.c Dir
$Bswinputdir .= "\/bswcdd\/BSW"; # Enter bswsrv.c Dir

#Get all html files in current folder.
#-----------------------------------------------------------------------------------------------------------------------
my $BswVerCFile = "$Bswinputdir\/bswsrv.c";

# Tool name
#-----------------------------------------------------------------------------------------------------------------------
my $toolFullName = __FILE__;
my $toolName     = ($toolFullName =~ /([^\\]+)$/)[0];
my $toolCmd      = (($toolName =~ /\.pl$/i) ? 'perl ' : '') . $toolName;

# Get tool parameters
#-----------------------------------------------------------------------------------------------------------------------
my $echo           = 1;
my $help           = 0;
my $cfgonscreen    = 0;
my $bsw            = 0;
my $emb            = 0;

foreach(@ARGV)
{
   if    (/^-bsw$/i)            {$bsw = 1;}
   elsif (/^-emb$/i)            {$emb = 1;}
   else                         {$help = 1; $echo = 1; last;}
}


# Tool information
#-----------------------------------------------------------------------------------------------------------------------
if ($help)
{
   print "\n$toolName\n\n";
   print "   $toolCmd [options]\n\n";
   print "    options:\n";
   print "         -checkonly (verifies configuration only, no file will be generated whatever option is set)\n";
   print "         -mute\n";
   print "         -help\n";
   print "\n";

   exit(-1);
}
printf "Timestamp generator V$TsGenorVersion\n";

our @CFileLines;


#Define output file names.
#-----------------------------------------------------------------------------------------------------------------------
my $LineIndex = 0;
my $BswVerCFileContent = "";

#----------------------------------------- Read Date adn time ---------------------------------------------#
my ($sec,$min,$hour,$day,$mon,$year,$weekday,$yeardate,$savinglightday)   =  (localtime(time));
$year += 1900;
$mon += 1;

my $HexYearL = "0x";
   $HexYearL .= substr($year,2,2);
   
my $HexMon = "0x";
   if($mon < 10)
   {
      $HexMon .= "0";
      $HexMon .= $mon;
   }
   else
   {
      $HexMon .= $mon;
   }
   
my $HexDay = "0x";
   if($day < 10)
   {
      $HexDay .= "0";
      $HexDay .= $day;
   }
   else
   {
      $HexDay .= $day;
   }
my $HexHour = "0x";
   if($hour < 10)
   {
      $HexHour .= "0";
      $HexHour .= $hour;
   }
   else
   {
      $HexHour .= $hour;
   }
my $HexMin = "0x";
   if($min < 10)
   {
      $HexMin .= "0";
      $HexMin .= $min;
   }
   else
   {
      $HexMin .= $min;
   }
my $HexSec = "0x";
   if($sec < 10)
   {
      $HexSec .= "0";
      $HexSec .= $sec;
   }
   else
   {
      $HexSec .= $sec;
   }   
#----------------------------------------- Read input file ---------------------------------------------#
my $localLine = "";
my $BswKeywordfound = 0;

if($bsw)
{
   if (!open(IN_FD, "<$BswVerCFile"))
   {
      print "Error: can't open \"$BswVerCFile\" ($!)\n";
      exit(-1);
   }
   $BswVerCFileContent = join('', <IN_FD>);
   close(IN_FD);
   
   @CFileLines = split '\n', $BswVerCFileContent;
   $BswVerCFileContent = "";
   
   for($LineIndex = 0; $LineIndex < scalar(@CFileLines); $LineIndex++)
   {
      $localLine = $CFileLines[$LineIndex];
      if($localLine =~  /^const uint8 BSW_kau8IntBswLibDate\[6\].*/)
      {
         $localLine =  "const uint8 BSW_kau8IntBswLibDate[6]       = {$HexYearL, $HexMon, $HexDay, $HexHour, $HexMin, $HexSec};\n";
         $BswKeywordfound = 1;
      }
      else
      {
         $localLine .= "\n";
      }
      $BswVerCFileContent .= $localLine;
   }

   if($BswKeywordfound != 0)
   {
      if (length($BswVerCFile) > 0)
      {
         if (!open(OUT_FD, ">$BswVerCFile"))
         {
            print "Error: can't write \"$BswVerCFile\" ($!)\n";
            exit(-1);
         }
         print OUT_FD $BswVerCFileContent;
         close(OUT_FD);
      } 
   }
   else
   {
      print "Error: Bsw timestamp not generated.\n";
   }
     
}

