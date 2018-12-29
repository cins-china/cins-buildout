require 'formula'
require 'etc'

class Buildout < Formula
    homepage 'https://github.com/cins-china/cins-buildout'
    url 'https://github.com/cins-china/cins-buildout.git', :tag => '2.12.2'
    version '2.12.2'

    def install
     prefix.install "whls"
     bin.install "bin/buildout"
     $user_home = Etc.getpwuid.dir
     `source #$user_home/.bashrc`
    end

end
