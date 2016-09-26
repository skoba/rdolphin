guard 'rails' do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

ignore! %r{\.#.+}
group :red_green_refactor, halt_on_fail: true do
  guard :rspec, all_after_pass: true, all_on_start: true, cmd: "spring rspec" do
    require "guard/rspec/dsl"
    dsl = Guard::RSpec::Dsl.new(self)
    
    # Feel free to open issues for suggestions and improvements
    
    # RSpec files
    rspec = dsl.rspec
    watch(rspec.spec_helper) { rspec.spec_dir }
    watch(rspec.spec_support) { rspec.spec_dir }
    watch(rspec.spec_files)

    # Ruby files
    ruby = dsl.ruby
    dsl.watch_spec_files_for(ruby.lib_files)

    # ignore emacs lockfile
    #ignore! %r{^\.\#.*}
  
    # Rails files
    rails = dsl.rails(view_extensions: %w(erb haml slim))
    dsl.watch_spec_files_for(rails.app_files)
    dsl.watch_spec_files_for(rails.views)

    watch(rails.controllers) do |m|
      [
        rspec.spec.("routing/#{m[1]}_routing"),
        rspec.spec.("controllers/#{m[1]}_controller"),
        rspec.spec.("acceptance/#{m[1]}")
      ]
    end

    # Rails config changes
    watch(rails.spec_helper)     { rspec.spec_dir }
    watch(rails.routes)          { "#{rspec.spec_dir}/routing" }
    watch(rails.app_controller)  { "#{rspec.spec_dir}/controllers" }

    # Capybara features specs
    watch(rails.view_dirs)     { |m| rspec.spec.("features/#{m[1]}") }

    # # Turnip features and steps
    # watch(%r{^spec/acceptance/(.+)\.feature$})
    # watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$}) do |m|
    #   Dir[File.join("**/#{m[1]}.feature")][0] || "spec/acceptance"
    # end
  end

  guard :rubocop, all_on_start: false, cli: '--rails' do
    watch(%r{.+\.rb$})
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end

# guard 'livereload' do
#   watch(%r{app/views/.+\.(erb|haml|slim)$})
#   watch(%r{app/helpers/.+\.rb})
#   watch(%r{public/.+\.(css|js|html)})
#   watch(%r{config/locales/.+\.yml})
#   # Rails Assets Pipeline
#   watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
# end
