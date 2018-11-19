require 'csv'
require 'nkf'
require 'active_support'
require 'active_support/core_ext'

file_path = './cp932.csv'
option = {
  col_sep: ',',
  quote_char: ',',
  row_sep: :auto,
  encoding: 'Shift_JIS:UTF-8'
}

# ファイルのエンコードを出力
p NKF.guess(File.read(file_path))

begin
  CSV.foreach(file_path, option) do |col|
    # 一度も出力されない
    p col
  end
rescue => ex
  # CSV.foreachが実行されたさ際に例外発生する
  # →CP932対象の文字が入っているのにも関わらず、Shift_JISを指定しているため
  p ex
end
