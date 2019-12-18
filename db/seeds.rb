# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
    </p>},
  image_url: 'ruby.jpg',
  price: 249.95)

Product.create!(title: 'Bananas Yellow',
                description:
                    %{<p>
        Banana - whole seasoned plots - botanically berry - sprouts of the
        species of the species of great grass’s herbaceous quills of the
        genus Musa. In some countries, bananas, so that they can be cooked
        for cooking, you can call them "plantain", you can see all kinds
         of dessert bananas.
                    </p>},
                image_url: 'bananas.jpg',
                price: 49.99)

Product.create!(title: 'Programming CoffeeScript',
                description:
                    %{<p>
        CoffeeScript is a mov program that translates into JavaScript.
        CoffeeScript has a syntactic zucor in dusi Ruby, Python and Haskell
        in order to reduce the reading code and change the code. In the
        middle, for the weekend of the same kind of dances on CoffeeScript,
        it’s 2 times smaller than the number of rows, including JavaScript.
                    </p>},
                image_url: 'coffeescript.jpg',
                price: 149.95)

Product.create!(title: 'Rails Test Prescriptions',
                description:
                    %{<p>
        Rails Test Prescriptions is a comprehensive guide to testing Rails
        applications, covering Test-Driven Development from both a theoretical
        perspective (why to test) and from a practical perspective (how to test
        effectively). It covers the core Rails testing tools and procedures for
        Rails 2 and Rails 3, and introduces popular add-ons, including RSpec,
        Shoulda, Cucumber, Factory Girl, and Rcov.
                    </p>},
                image_url: 'ruby_tests.jpg',
                price: 199.95)