class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) { instance_variable_get("@#{name}") }
      define_method("#{name}=") { |value| instance_variable_set("@#{name}", value) }
    end
  end
end

# def self.my_attr_reader(*ivar_names)
#   # for each of the ivar_names,
#   # use `define_method` to create getter method with that ivar_name as arg
#     # define_method block won't take any arguments
#     # use `instance_variable_get` to get that instance variable with that ivar_name (using symbol/string with @ like we did in self.create_tricks)
# end
