#!/bin/bash

fruit="guava"  # You can change this to test different cases

case "$fruit" in
    apple)
        echo "The fruit is apple."
        echo "Apples are red or green and are great for making pies."
        ;;
    orange | guava)
        echo "The fruit is orange and guava."
        echo "Oranges are citrus fruits rich in vitamin C."
        ;;
    banana)
        echo "The fruit is banana."
        echo "Bananas are yellow and are high in potassium."
        ;;
    grape)
        echo "The fruit is grape."
        echo "Grapes can be red, green, or purple and are used to make wine."
        ;;
    *)
        echo "The fruit is unknown."
        echo "Please provide a valid fruit name."
        ;;
esac

