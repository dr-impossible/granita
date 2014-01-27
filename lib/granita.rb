require 'granita/version'
require 'csv'

module Granita

  def slurp_csv(file_path, model_class, &block)
    CSV.foreach(file_path, headers: true) do |row|
      data = row.to_hash.symbolize_keys

      yield data if block_given?

      object = model_class.new(data, without_protection: true)
      object.save(validate: false)
    end
  end

  def find_if_present(model_class, where_clause = {})
    model_class.where(where_clause).first if where_clause.present?
  end

end
