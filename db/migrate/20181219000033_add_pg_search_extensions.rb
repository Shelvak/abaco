class AddPgSearchExtensions < ActiveRecord::Migration[4.2]
  def change
    enable_extension('unaccent')
    enable_extension('pg_trgm')
  end
end
