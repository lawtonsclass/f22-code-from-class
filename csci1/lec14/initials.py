import turtle
import math

print(turtle.position())

# make the turtle go fast
# turtle.speed('fast')

# make the turtle actually look like a turtle
turtle.shape('turtle')

# get the turtle into position
turtle.up()
turtle.setheading(180) # face west
turtle.forward(200)
turtle.right(90)
turtle.forward(100)

turtle.down() # now we're ready to draw

# draw the L
turtle.setheading(270) # face south
turtle.forward(200)
turtle.left(90)
turtle.forward(125)

# space between letters
turtle.up()
turtle.forward(40)
turtle.down()

# draw the N
turtle.left(90)
turtle.forward(200)

angle = math.degrees(math.atan(125/200))
turtle.right(180 - angle)

l = math.sqrt(125**2 + 200**2)
turtle.forward(l)
turtle.left(180 - angle)

turtle.forward(200)

# turtle.goto(0, 0)








