class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
    #self.template = "template 14231"
  end

  def show_template
    template
    #self.template
  end
end
