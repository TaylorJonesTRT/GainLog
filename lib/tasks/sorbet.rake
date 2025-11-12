namespace :sorbet do
  desc "Regenerate Sorbet RBI files"
  task update: :environment do
    system("bundle exec tapioca dsl")
    system("bundle exec tapioca gems")
  end
end
