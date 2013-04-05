require 'formula'

class Geogit < Formula
  homepage 'https://github.com/opengeo/GeoGit'
  url 'http://astromech.opengeo.org/geogit/geogit-cli-app-0.1-20130405.zip'
  sha1 'ccd131fb9d6818ffdb84582c437e8b701c8c76ea'

  def install
    rm_f Dir["bin/*.bat", "bin/cygrails", "*.bat"]
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
