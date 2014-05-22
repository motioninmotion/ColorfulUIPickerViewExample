Color = Struct.new(:color, :label)

class ColorStore
  COLORS = [
    Color.new(:black, "Black"),
    Color.new(:darkGray, "Dark Gray"),
    Color.new(:lightGray, "Light Gray"),
    Color.new(:gray, "Gray"),
    Color.new(:red, "Red"),
    Color.new(:green, "Green"),
    Color.new(:blue, "Blue"),
    Color.new(:cyan, "Cyan"),
    Color.new(:yellow, "Yellow"),
    Color.new(:magenta, "Magenta"),
    Color.new(:orange, "Orange"),
    Color.new(:purple, "Purple"),
    Color.new(:brown, "Brown")
  ]

  def self.all
    COLORS
  end
end
