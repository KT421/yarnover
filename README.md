
# yarnover

The goal of yarnover is to provide functions to help generate crochet patterns for simple 2D and 3D shapes.

## Planned Functions

- 2D shapes
  - Circle
  - Triangle
  - Square (rows)
  - Square (round)
  - Rectangle (rows)
  - Rectangle (rounds)
- 3D shapes
  - Sphere
  - Ellipsoid
  - Separate determiners for upper and lower half
  
- Shiny App

## Not planned but would be nice

- Yarn size
- Hook size
- Gauging
- Toggle between British and American notation
- Stitches other than single crochet 

# Why?

Because I make amigurumi for my children and I am getting odd requests that require the formulation of my own patterns, and there's a limit to what I can freehand. 

## What about other shapes?

I dunno. If I haven't needed it, I haven't written it. If you have an idea, you're welcome to make a pull request and add something.

## How about other stitches? 

I mostly do amigurumi so it's sc all day here. If I have a need, I'll add support for other stitches. 

## Why in R?

Because it's the only programming language I know, so it's my hammer and this is a nail.

# Technical TO DO

- Tip my toe into R objects to create a `pattern` object? 
- Initial pass is very rigid and only works for established primitives and known formulas. Add actual math to support more complex shapes?
