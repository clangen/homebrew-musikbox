require 'formula'

class Musikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/musikcube.git'
    url 'https://github.com/clangen/musikcube/archive/0.6.0.tar.gz'
    sha256 '91f7736b3c188179a947c716ac508aa109ca0ef41ffa9ec737fa68750a788679'
    version '0.6.0'

    depends_on 'cmake' => :build
    depends_on 'boost'
    depends_on 'libogg'
    depends_on 'libvorbis'
    depends_on 'flac'
    depends_on 'mpg123'
    depends_on 'faad2'
    depends_on 'fftw'

    def install
        system "cmake -DCMAKE_BUILD_TYPE=Release -DHOMEBREW_PREFIX=#{HOMEBREW_PREFIX} -DCMAKE_INSTALL_PREFIX=#{prefix} ."
        system "make"
        system "make install"
    end
end
