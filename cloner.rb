require 'git'

class Cloner
  def initialize(gh_path)
    @gh_path = gh_path
  end

  def clone
    Git.clone(gh_path, Dir.mktmpdir('clone'))
  end

  def clone_with_key(key)
    Tempfile.open('key') do |keyfile|
      keyfile.write(key)
      clone
    end
  end

  private

  attr_reader :gh_path
end
