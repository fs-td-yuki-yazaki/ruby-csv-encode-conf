require 'csv'
require 'nkf'
require 'active_support'
require 'active_support/core_ext'

file_path = './cp932.csv'
option = {
  col_sep: ',',
  quote_char: ',',
  row_sep: :auto,
  encoding: 'CP932:UTF-8'
}

# ファイルのエンコードを出力
p NKF.guess(File.read(file_path))

begin
  CSV.foreach(file_path, option) do |col|
    p col
  end
rescue => ex
  p ex
end
