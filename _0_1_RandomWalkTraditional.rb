attr_reader :walker

def setup
  size 200, 400
  @walker = Walker.new(width, height)
end

def draw
  walker.step
  walker.render
end

# A random walker object!

class Walker
  attr_reader :x, :y

  def initialize width, height
    @x = width / 2
    @y = width / 2
    @width = width
    @height = height
  end

  def render
    stroke 0
    point x, y 
  end

  # Randomly move up, down, left, right, or stay in one place
  def step
    choice = random(0,4).to_i

    case choice
    when 0
      @x += 1
    when 1
      @x -= 1
    when 2
      @y += 1
    else
      @y -= 1
    end

    x = constrain @x, 0, (@width - 1)
    y = constrain @y, 0, (@height - 2)

  end
end