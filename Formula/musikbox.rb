require 'formula'

class Musikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/musikcube.git'
    url 'https://github.com/clangen/musikcube/archive/0.11.0.tar.gz'
    sha256 '8b37bc5b0ecab840ce6b7327555ad706a0e666dd2024d29f3e00e1ef155c844e'
    version '0.11.0'

    depends_on 'cmake' => :build
    depends_on 'boost'
    depends_on 'libogg'
    depends_on 'libvorbis'
    depends_on 'flac'
    depends_on 'faad2'
    depends_on 'libmicrohttpd'

    def install
        system "cmake -DCMAKE_BUILD_TYPE=Release -DHOMEBREW_PREFIX=#{HOMEBREW_PREFIX} -DCMAKE_INSTALL_PREFIX=#{prefix} ."
        system "make"
        system "make install"
    end
end
