# bmkfcn
A MATLAB toolkit of benchmark functions for numerical experiments of optimization. 

## Usage: bmkfcn.m

Get function handles of the benchmark function using index.

```matlab
[J, lmt, name] = bmkfcn(index,d)
```

### inputs:
- `index` - integer
- `d` - demension of benchmark functions
### outputs:
- `J` - function handle, calculating the fitness of x (an d-by-n matrix) 
- `lmt` - constraints 
- `name` - char, function name

### example

```matlab
>> i = 2;
>> d = 4; 
>> [J,lmt,name] =  bmkfcn(i,d)

J = 
  function_handle with value:
    @(x) sum(abs(x))+prod(abs(x))

lmt = 
    -32 32
    -32 32
    -32 32
    -32 32

name = 
    'Schwefel-2.22'

>> n = 10;
>> x = rand(d,n).*(lmt(:,2)-lmt(:,1)) + lmt(:,1);
>> f = J(x)

f = 
   1.0e+05 *
    0.7335    1.8390    0.2030    0.8281    2.2142    1.2539    0.0959    0.0046    0.3606    0.0060
```

Updating soon...
