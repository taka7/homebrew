require 'formula'

class Riece < Formula
  url 'http://mirror.csclub.uwaterloo.ca/nongnu//riece/riece-9.0.0.tar.gz'
  homepage 'http://www.nongnu.org/riece/index.html.en'
  sha1 '62c295a17488a0dfc1f0751fd41fbecedc8bdb40'

  def install
    system "./configure --with-emacs=#{HOMEBREW_PREFIX}/bin/emacs --prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
