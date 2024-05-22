namespace :deploy do
  desc 'Prepare the tailwind css file'
  task :build_and_copy_tailwind_css do
    on roles(:app) do
      within release_path do
        execute :rake, 'tailwindcss:build'
        execute :rake, 'copy_tailwind_css'
      end
    end
  end
end
