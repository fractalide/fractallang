functor
import
   Comp at '../lib/component.ozf'
export
   new: NewSplitter
define
   fun {NewSplitter}
      {Comp.new comp(inPorts(input:proc {$ Buffer Out NVar State Options}
				      {FoldL {Buffer.get} fun {$ Acc IP} {Out.out.Acc IP} Acc+1 end 1 _}
				   end
			    )
		     outArrayPorts(out)
		    )
      }
   end
end