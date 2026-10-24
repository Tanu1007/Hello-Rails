module MoviesHelper
  def next_direction(column)
    params[:sort] == column && params[:direction] != "desc" ? "desc" : "asc"
  end

  def sort_indicator(column)
    return "" unless params[:sort] == column

    params[:direction] == "desc" ? "▼" : "▲"
  end
end