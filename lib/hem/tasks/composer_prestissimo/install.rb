#!/usr/bin/env ruby
# ^ Syntax hint

desc 'Install hirak/prestissimo for speedier composer installs'
task :composer_prestissimo do
  Hem.ui.section 'Installing hirak/prestissimo for speedier composer installs' do
    run php_command(
      'php bin/composer.phar global require \'hirak/prestissimo\' '\
      '--no-interaction --no-ansi --quiet --no-progress --prefer-dist'
    )
    Hem.ui.success 'Installed hirak/prestissimo into the VM'
  end
end
