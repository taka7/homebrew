require 'formula'

class Ddskk < Formula
  homepage 'http://openlab.ring.gr.jp/skk/ddskk.html'
  url 'http://openlab.ring.gr.jp/skk/maintrunk/ddskk-15.1.tar.gz'
  sha1 'df4e7305c94cb8966e843dff9a0c9f1fabdcb082'

  def install
    open("SKK-CFG", 'a'){|f| f.puts(<<DATA) }
;(setq SKK_INFODIR "#{HOMEBREW_PREFIX}/share/info")
;(setq SKK_DATADIR "#{HOMEBREW_PREFIX}/share/skk")
;(setq SKK_LISPDIR "#{HOMEBREW_PREFIX}/share/emacs/site-lisp/skk")
(setq SKK_INFODIR "#{share}/info")
(setq SKK_DATADIR "#{share}/skk")
(setq SKK_LISPDIR "#{share}/emacs/site-lisp/ddskk")
(setq SKK_SET_JISYO t)
DATA
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs"
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs install"
  end

end

__END__
