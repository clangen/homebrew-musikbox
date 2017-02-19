require 'formula'

class Musikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/musikcube.git'
    url 'https://github.com/clangen/musikcube/archive/0.9.0.tar.gz'
    sha256 '9769a4add05ac921dcc55ca2949f1fa9ee3a3d64e6d7a4d266d7802e7ca08f60'
    version '0.9.0'

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
