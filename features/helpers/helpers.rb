class Helpers
  def formatar_cod_barras(cod_barras)
    inicial = cod_barras[0, 3]
    final = cod_barras[3, 10]
    "#{inicial}-#{final}"
  end
end
