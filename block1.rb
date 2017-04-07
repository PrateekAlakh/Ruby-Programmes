class Example
	def pass_block (&action)
		@stored_proc=action
		puts 'class of action= '+action.class.to_s
		puts 'class of action= '+@stored_proc.class.to_s
	end
	def use_proc (parameter)
		@stored_proc.call(parameter)
	end
end

obj=Example.new
obj.pass_block {|p| puts "the parameter is = #{p}"}
obj.use_proc(100)
