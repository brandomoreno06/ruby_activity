class  Confection
  def prepare
    "Baking at 350 degrees for 25 minutes"
  end
end


class Cupcake < Confection
  def prepare
    super + "\nApplying frosting"
  end
end


class Banana_Cake < Confection
end


puts Cupcake.new.prepare
puts Banana_Cake.new.prepare