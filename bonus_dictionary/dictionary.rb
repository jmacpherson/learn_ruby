class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}    
  end

  def add(entry)
    return entry.each { |k,v| @entries[k] = v } if entry.is_a?(Hash)
    return @entries[entry] = nil
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    keywords.include?(keyword)
  end

  def find(keyword)
    finds = {}
    @entries.each do |key, value|
      if key.include?(keyword)
        finds[key] = value
      end
    end
    return finds
  end
end