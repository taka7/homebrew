require 'formula'

class Flim < Formula
  homepage 'http://git.chise.org/elisp/flim/'
  url 'http://git.chise.org/elisp/dist/flim/flim-1.14/flim-1.14.9.tar.gz'
  sha1 'fc3f1ecfa757d83b10693dc74d890a1ad7db7abd'

  depends_on 'apel'

  def install
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs"
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs PREFIX=#{prefix} install"
  end

end
