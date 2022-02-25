class SimpleCheckout
  def initialize
    @checkout = [ ]
    @item
  end

  def new_item
    @item = rand(1...50)
  end 

  def show_price
    @item
  end

  def scan
    @checkout << @item
  end

  def show_scanned
    total = 0
    @checkout.each { |item| total+= item }
    total
  end
  
end
