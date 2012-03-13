Factory.define :song do |s|
  s.title { |n| "The title #{n}"}
  s.body { |n| "Some body some where something #{n}"}
end
