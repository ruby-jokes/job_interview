Gem::Specification.new do |s|
  s.name          = 'job_interview'
  s.version       = '0.1.4'
  s.summary       = 'Programmer job interview answers, packaged for your convenience'
  s.description   = 'Programmer job interview answers, packaged for your convenience. Fibonacci, FizzBuzz, and more! A project from BohConf 2012.'
  s.authors       = ["Micah Gates", "Jason Lewis"]
  s.email         = ["github@mgates.com", "canweriotnow@gmail.com"]
  s.homepage      = "https://github.com/ruby-jokes/job_interview"
  s.files         = [ 'lib/job_interview.rb', 
                      'lib/job_interview/fibonacci.rb',
                      'lib/job_interview/fizz_buzz.rb',
                      'lib/job_interview/knapsack.rb',
                      'lib/job_interview/answer.rb',
                      'lib/job_interview/questions.rb',
                      'lib/job_interview/primes.rb',
                      'lib/job_interview/quine.rb',
                      'lib/job_interview/hello_world.rb']
  s.add_runtime_dependency 'faker', '~> 0.9.5'
  s.add_development_dependency 'rspec', '~> 2.9.0'
  s.add_development_dependency 'rake', '~> 0.9.2'
  s.test_files    = Dir.glob('spec/*_spec.rb')
  s.license       = 'GPLv3'
end
