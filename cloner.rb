require 'git'

class Cloner
  def initialize(gh_path)
    @gh_path = gh_path
  end

  def clone
    Git.clone(gh_path, Dir.mktmpdir('clone'))
  end

  def clone_with_key(key)
    keyfile = Tempfile.open('key')
    keyfile.write(key)

    clone
  end

  private

  attr_reader :gh_path
end
