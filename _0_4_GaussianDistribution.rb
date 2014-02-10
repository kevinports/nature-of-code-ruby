
def setup
  size 640, 320
  background 180
end

def draw
  # Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
  xloc = randomGaussian()

  sd = 60 # Define a standard deviation
  mean = width / 2 # Define a mean value (middle of the screen along the x-axis)
  xloc = (sd * xloc) + mean

  fill 0, 10
  noStroke
  ellipse xloc, height/2, 16, 16
end