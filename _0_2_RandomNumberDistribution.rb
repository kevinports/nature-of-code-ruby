# An array to keep track of how often random numbers are picked
attr_reader :randomCounts

def setup
  size 640, 240
  @randomCounts = Array.new(20){ |i| 0 }
end

def draw
  background 255

  # Pick a random number and increase the count
  index = random(randomCounts.length).to_i
  randomCounts[index] += 1

  # Draw a rectangle to graph results
  stroke 0
  strokeWeight 2
  fill 127

  # Graphing the results
  w = width/randomCounts.length
  randomCounts.each_with_index do |v, i|
    rect (i*w), (height - v), (w - 1), v
  end

end