# Singleton Pattern


* A pattern that makes sure there is only ever one instance of a class at a time

* e.g.

```ruby
class Game

  def self.create
    @game ||= Game.new
  end

  def init(params)
    # setup Game instance
  end
end

```
