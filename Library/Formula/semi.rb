require 'formula'

class Semi < Formula
  homepage 'http://git.chise.org/elisp/semi/'
  url 'http://git.chise.org/elisp/dist/semi/semi-1.14-for-flim-1.14/semi-1.14.6.tar.gz'
  sha1 'a7ed1b391abf837d3483243456936f51910f9894'

  depends_on 'flim'

  def install
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs"
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs PREFIX=#{prefix} install"
  end

end
