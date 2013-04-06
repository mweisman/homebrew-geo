require 'formula'

class Pointcloud < Formula
  homepage 'https://github.com/pramsey/pointcloud'
  url 'https://dl.dropbox.com/u/363450/pointcloud-master.zip'
  version '0.1'
  sha1 '675c32c5883a9f1e8dafa77b2cc6c52dcce7e1e4'
  head 'https://github.com/pramsey/pointcloud.git'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'postgresql'

  def install

    system './autogen.sh'
    
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

end
