require "formula"

class LiquidDsp < Formula
  homepage "http://liquidsdr.org/"
  head "https://github.com/jgaeddert/liquid-dsp.git"
  url "https://github.com/jgaeddert/liquid-dsp/archive/v1.2.0.tar.gz"
  sha1 "79bd76e0844778a16459e8cd8da747c87bd951fd"

  depends_on "fftw"
  head do
    depends_on "libtool" => :build
    depends_on "automake" => :build
    depends_on "autoconf" => :build
    depends_on "pkg-config" => :build
  end

  def install
    system "./bootstrap.sh" if build.head?
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
