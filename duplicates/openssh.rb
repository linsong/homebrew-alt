require 'formula'

class Openssh < Formula
  url 'ftp://ftp.lambdaserver.com/pub/OpenBSD/OpenSSH/portable/openssh-5.9p1.tar.gz'
  homepage 'http://www.openssh.com/'
  sha1 'bc0cb728bbc394769f9a2ce5b8cd99dc41e12632'
  version '5.9p1'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--with-libedit", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
