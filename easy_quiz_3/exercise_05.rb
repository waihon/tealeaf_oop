class Television
  def self.manufacturer
    # method logic
  end

  def model
    # Mothod logic
  end
end

tv = Television.new
#tv.manufacturer   #=> NoMethodError
tv.model

Television.manufacturer
#Television.model  #=> NoMethodError