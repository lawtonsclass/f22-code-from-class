import turtle
import random

turtle.shape("turtle")
turtle.speed("fastest")

i = 1
while i <= 50:
    # pick a random fill color
    colors = ["red", "orange", "yellow", "green", "blue", "purple"]
    random_index = random.randint(0, len(colors) - 1)
    turtle.fillcolor(colors[random_index])
    
    starting_x = random.randint(-200, 200)
    starting_y = random.randint(-200, 200)
    square_side_length = random.randint(50, 200)

    # go to the random starting point
    turtle.up()
    turtle.goto(starting_x, starting_y)
    turtle.down()

    # draw a square there with the correct random size
    turtle.begin_fill()
    turtle.forward(square_side_length)
    turtle.left(90)
    turtle.forward(square_side_length)
    turtle.left(90)
    turtle.forward(square_side_length)
    turtle.left(90)
    turtle.forward(square_side_length)
    turtle.end_fill()

    i = i + 1

