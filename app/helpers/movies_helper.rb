module MoviesHelper
  def next_direction(column)
    @sort == column && @direction == "asc" ? "desc" : "asc"
  end

  def sort_indicator(column)
    return "" unless @sort == column

    @direction == "desc" ? "▼" : "▲"
  end
end