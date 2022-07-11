## gaussiannoise

For Simulink part, do NOT use [Random Number](https://www.mathworks.com/help/simulink/slref/randomnumber.html#:~:text=The%20Random%20Number%20block%20generates,generator%20of%20the%20rng%20function). 


> Avoid integrating a random signal, because solvers must integrate relatively smooth signals. Instead, use the [Band-Limited White Noise](https://www.mathworks.com/help/simulink/slref/bandlimitedwhitenoise.html) block.
