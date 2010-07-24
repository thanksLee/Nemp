Preliminaries for Nemp
----------------------

IDE: CodeGear Delphi 2009 (or higher)



To compile Nemp, you need to install the following components first:

- VirtualTreeView by Mike Lischke (4.8.6)
  http://www.soft-gems.net/

- Win7Components by Daniel Wischnewski
  http://www.gumpi.com/blog/

- TACredits by Maximilian Sachs
  http://www.delphipraxis.net/topic114228.html

- NempComponents, including
  - TSkinButton, NempPanel, NempGroupbox by Daniel Gaussmann
  - uDragFilesSrc by Angus Johnson, modified by Daniel Gaussmann


Notes
------------------------------------------

- You need to change some Compiler-Directives in TACredits
  - {$DEFINE NOPNGSUPPORT} 
    (and fix the ",")
- In the class TACredits, you need to add a property
  property position: Integer read TPos write TPos; // ~line 420 in Credits.pas
