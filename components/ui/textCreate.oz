functor
import
   Comp at '../../lib/component.ozf'
export
   new: New
define
   fun {New Name} 
      {Comp.new component(
		   name: Name type:textCreate
		   outPorts(ui_out)
		   inPorts(ui_in: proc {$ Buf Out NVar State Options} NewUI D FuturOut in
				     NewUI = {Buf.get}
				     D = text(action: proc{$} {FuturOut text_modify} end
					       )
				     {Out.ui_out fun{$ FO}
						    FuturOut = FO
						    {Record.adjoin {Record.adjoin D NewUI} text}
						 end
				     }
				  end)
		   )
      }
   end
end
     