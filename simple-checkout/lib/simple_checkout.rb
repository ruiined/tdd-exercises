class SimpleCheckout
  def initialize
    @checkout = [ ]
    @item
  end

  def new_item
    @item = rand(1.0...50.0).round(2)
  end 

  def show_price
   "£#{@item}"
  end

  def scan
    @checkout << @item
  end

  def count_scanned
    total = 0
    @checkout.each { |item| total+= item }
    "£#{total.round(2)}"
  end
  
end
