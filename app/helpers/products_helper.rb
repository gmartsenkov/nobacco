module ProductsHelper

  def in_stock(stock)
    in_stock = '<i class="fa fa-check"></i>&nbsp; В наличност'.html_safe
    out_of_stock = '<span style="color:#FF3333"><i class="fa fa-times"></i>&nbsp; Няма в наличност</span>'.html_safe
    if stock >= 1
      return in_stock
    else
      return out_of_stock
    end
  end

  def colors(str)
    output = ""

    if str.to_s.length < 1
      return ""
    end
    str.split("").each do |i|
      if i == "r"
        output += '<i class="fa fa-circle" style="color:firebrick;"></i>&nbsp;'
      end
      if i == "b"
        output += '<i class="fa fa-circle" style="color:steelblue;"></i>&nbsp;'
      end
      if i == "c"
        output += '<i class="fa fa-circle" style="color:black;"></i>&nbsp;'
      end
      if i == "i"
        output += '<i class="fa fa-circle" style="color:silver;"></i>&nbsp;'
      end
    end
    return ("Цветове: " + output).html_safe
  end

  def nicotine(str)
    output = "Никотин: "
    if str.to_s.length < 1
      return ""
    end
    str.split("").each do |i|
      if i == 'a'
        output += " 0% "
      end
      if i == 'b'
        output += " ,0.6% "
      end
      if i == 'c'
        output += " ,0.9% "
      end
      if i == 'd'
        output += " ,1.2% "
      end
      if i == 'e'
        output += " ,1.8% "
      end
    end
    return output
  end
end
