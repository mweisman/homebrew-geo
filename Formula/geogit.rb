require 'formula'

class Geogit < Formula
  homepage 'https://github.com/opengeo/GeoGit'
  url 'http://sourceforge.net/projects/geogit/files/geogit-0.1.0/geogit-cli-app-0.1.0.zip/download'
  sha1 'ddf737f21d4388aef303307b88aa4c4134faf5a1'

  def install
    rm_f Dir["bin/*.bat", "*.bat"]
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
