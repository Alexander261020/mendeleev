require 'json'

class ElementsCollection
  def self.read_from_file(path)
    elements = JSON.parse(File.read(path, encoding: "UTF-8"))

    elements_collection = elements.map { |element, params| Element.new(element, params) }

    new(elements_collection)
  end

  def initialize(elements_collection)
    @elements_collection = elements_collection
  end

  def symbols
    @elements_collection.map { |element| element.symbol.downcase }
  end

  def to_s
    @elements_collection.map.with_index(1) { |element, index| "#{index} - #{element.symbol}" }.join("\n")
  end

  def size
    @elements_collection.size
  end

  def index_by(index)
    @elements_collection[index]
  end
end
