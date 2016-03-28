require 'formula'

class Buildout < Formula
    homepage 'https://github.com/cins-china/cins-buildout'
    url 'https://github.com/cins-china/cins-buildout.git', :tag => '2.5.0'
    version '2.5.0'

    def install
     prefix.install "eggs"
     bin.install "bin/buildout"
    end

end
