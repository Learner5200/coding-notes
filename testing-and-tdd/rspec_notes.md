# RSpec notes

- can use ‘subject’ to refer to an instance of the class under test
- RSpec: instead of writing
- “feature test” = just run stuff in irb, see if your objects exist, methods happen, etc
- “unit test” = the things you write in RSpec to test individual bits
- use expect { some_code } when we are interested in what the calling of some_code does - for example, we expect {bad_method} to raise an exception
- use expect (some code) when we are interested in some property of what some_code returns, e.g. expect (arms) to equal 2
- **predicate matchers**: if an object has a method like `object#hungry?`, RSpec gives us magical syntax `expect(object).to be_hungry`, which will check for it. Can take a parameter if needed.
  - similarly, can do for methods like `has_arms?`

## One-line expectations

Instead of writing:

```
it "does a thing" do
  expect(subject).to do_the_thing
end
```

You can write

`it { should do_the_thing}`

or

`it { is_expected_to do_the_thing}`
