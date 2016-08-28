require 'formula'

class Musikcube < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/musikcube.git'
    url 'https://github.com/clangen/musikcube/archive/0.1.1.tar.gz'
    md5 '580bd10103cca722f057c7fb2ccd1619'
    version '0.1.1'

    depends_on 'cmake' => :build
    depends_on 'boost'
    depends_on 'libogg'
    depends_on 'libvorbis'
    depends_on 'flac'
    depends_on 'mpg123'
    depends_on 'faad2'

    def install
        system "cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=#{prefix} ."
        system "make"
        system "make install"
    end
end
