import turtle

print(turtle.position())

# make the turtle go fast
turtle.speed('fast')

# make the turtle actually look like a turtle
turtle.shape('turtle')

# Mr. Turtle, please move in your current direction by 100 units
turtle.forward(100)

print(turtle.position())

# turn left 90 degrees
turtle.left(90)

turtle.forward(100)

turtle.left(90)

turtle.forward(100)

turtle.left(90)

turtle.forward(100)


## let's draw a second square!

turtle.setheading(0) # face east

turtle.up() # pick your tail up
turtle.forward(150)
turtle.down() # put your tail down

turtle.forward(25)
turtle.left(90)
turtle.forward(25)
turtle.left(90)
turtle.forward(25)
turtle.left(90)
turtle.forward(25)
