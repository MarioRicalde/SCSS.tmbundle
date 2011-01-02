def scroller(type, q = 1)
  if result = ENV['TM_CURRENT_WORD'].match(/(\-?\d+)(\w+)?/)
    int = result[1].to_i
    case type
    when 'add'
      int += q
    when 'substract'
      int -= 1
    end
    print int.to_s << result[2].to_s
  end
end
