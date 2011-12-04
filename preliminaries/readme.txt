Preliminaries for Nemp
----------------------

IDE: CodeGear Delphi 2009 (or higher)


To compile Nemp, you need to install the following components first:

- VirtualTreeView by Mike Lischke (4.8.7)
  http://www.soft-gems.net/


- TACredits by Maximilian Sachs
  http://www.delphipraxis.net/topic114228.html


- FspWinTaskbar - Windows7 Taskbar Components
  http://delphi.fsprolabs.com
  (c) FSPro Labs, 2010

- NempComponents, including
  - TSkinButton, NempPanel by Daniel Gaussmann
  - uDragFilesSrc by Angus Johnson, modified by Daniel Gaussmann


Notes
------------------------------------------

Modify the unit VirtualTrees: 
replace TBaseVirtualTree.DoEndEdit by the following method. 
Otherwise editing the main VST will cause some strange errors

function TBaseVirtualTree.DoEndEdit: Boolean;
begin
	StopTimer(EditTimer);
	Result := (tsEditing in FStates) and FEditLink.EndEdit;
	if Result then	
	begin	
		DoStateChange([], [tsEditing]);
		//FEditLink := nil;             // not here
		if Assigned(FOnEdited) then
			FOnEdited(Self, FFocusedNode, FEditColumn);
		FEditLink := nil;               // but here !!!
	end;
	DoStateChange([], [tsEditPending]);
end;

