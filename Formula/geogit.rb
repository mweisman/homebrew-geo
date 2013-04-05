require 'formula'

class Geogit < Formula
  homepage 'https://github.com/opengeo/GeoGit'
  url 'http://localhost:8000/geogit-cli-app-0.1-20130404.zip'
  sha1 '83b7ad9d8585fbe42fd12b7ee732c63e33536c5d'

  def install
    rm_f Dir["bin/*.bat", "bin/cygrails", "*.bat"]
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
