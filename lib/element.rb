class Element
  attr_reader :symbol, :name, :density, :year, :discoverer, :number

  def initialize(element, params)
    @symbol = element
    @number = params["number"]
    @name = params["name"]
    @density = params["density"]
    @year = params["year"]
    @discoverer = params["discoverer"]
  end

  def to_s
    <<~INFORMATION
      --------------------------------------------
      #{symbol} - #{name}
      Порядковый номер: #{number}
      Первооткрыватель: #{discoverer} (#{year} г.)
      Плотность: #{density} г/см³
      --------------------------------------------
    INFORMATION
  end
end
