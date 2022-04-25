defmodule Nova.Service do 
	alias Nova.Counter
	def listen(counter) do  
		receive do
			:inc -> 
				Counter.inc(counter)
		end
	end
end
