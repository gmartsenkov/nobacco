module InCartsHelper

  def in_color(str)
    output = ""
    if str.to_s.length < 1
      return ""
    end
    str.split("").each do |i|
      if i == "r"
        output += '<label class="checkbox-inline">
      <input id="red" name="red" type="checkbox" value="red" /> Червен
    </label>'
      end
      if i == "b"
        output += '<label class="checkbox-inline">
      <input id="blue" name="blue" type="checkbox" value="blue" /> Син
    </label>'
      end
      if i == "c"
        output += '<label class="checkbox-inline">
      <input id="black" name="black" type="checkbox" value="black" /> Черен
    </label>'
      end
      if i == "i"
        output += '<label class="checkbox-inline">
      <input id="inox" name="inox" type="checkbox" value="inox" /> Inox
    </label>'
      end
    end
    return (output).html_safe
  end

  def in_nicotine(str)
    output = ""
    if str.to_s.length < 1
      return ""
    end
    str.split("").each do |i|
      if i == 'a'
        output += '<label class="checkbox-inline">
      <input id="a" name="a" type="checkbox" value="a" /> 0%
    </label>'
      end
      if i == 'b'
        output += '<label class="checkbox-inline">
      <input id="b" name="b" type="checkbox" value="b" /> 0.6%
    </label>'
      end
      if i == 'c'
        output += '<label class="checkbox-inline">
      <input id="c" name="c" type="checkbox" value="c" /> 0.9%
    </label>'
      end
      if i == 'd'
        output += '<label class="checkbox-inline">
      <input id="d" name="d" type="checkbox" value="d" /> 1.2%
    </label>'
      end
      if i == 'e'
        output += '<label class="checkbox-inline">
      <input id="e" name="e" type="checkbox" value="e" /> 1.8%
    </label>'
      end
    end
    return output.html_safe
  end


  def ekont(total)
    return total * 0.024 + 5.7
  end
end
