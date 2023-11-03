# frozen_string_literal: true

task :copy_tailwind_css do
  source = Rails.root.join('app', 'assets', 'builds', 'tailwind.css')
  destination = Rails.root.join('app', 'apps', 'themes', 'forty_unbroken', 'assets', 'css', 'tailwind.css')

  if File.exist?(source)
    puts 'moving tailwind.css to apps/themes/forty_unbroken/assets/css'
    FileUtils.cp source, destination
  else
    puts <<~MSG
      Failed to copy the tailwind.css
      No such file `tailwind.css` in app/assets/builds
    MSG
  end
end
