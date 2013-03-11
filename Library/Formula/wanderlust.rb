require 'formula'

class Wanderlust < Formula
  url 'http://www.jpl.org/elips/wl/wl-2.14.0.tar.gz'
  homepage 'http://www.gohome.org/wl/'
  md5 '60b94c9796ee40b6585ef19a509c90df'
  head 'https://github.com/wanderlust/wanderlust.git', :using => :git

  depends_on 'semi'

  def install
    inreplace 'WL-CFG', ';(setq wl-install-utils t)', '(setq wl-install-utils t)'
    File.open("wl/wl-vars.el", "a") do |f|
      f.puts '(setq wl-icon-directory "' + HOMEBREW_PREFIX + '/share/emacs/etc/wl/icons")'
    end

    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs"
    system "make EMACS=#{HOMEBREW_PREFIX}/bin/emacs LISPDIR=#{share}/emacs/site-lisp PIXMAPDIR=#{share}/emacs/etc/wl/icons install"
  end
end
