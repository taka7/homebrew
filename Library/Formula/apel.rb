require 'formula'

class Apel < Formula
  homepage 'http://git.chise.org/elisp/apel/'
  url 'http://git.chise.org/elisp/dist/semi/apel-10.8.tar.gz'
  sha1 '089c18ae006df093aa2edaeb486bfaead6ac4918'

  def install
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs"
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs PREFIX=#{prefix} install"
  end

end
