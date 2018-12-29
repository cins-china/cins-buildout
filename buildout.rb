require 'formula'
require 'etc'

class Buildout < Formula
    homepage 'https://github.com/cins-china/cins-buildout'
    url 'https://github.com/cins-china/cins-buildout.git', :tag => '2.5.1'
    version '2.5.1'

    def install
     prefix.install "eggs"
     bin.install "bin/buildout"
     $user_home = Etc.getpwuid.dir
     `source #$user_home/.bashrc`
    end

end
