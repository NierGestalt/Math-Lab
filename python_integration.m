% Step 1: Set Python environment using pyenv
% Set up the Python environment with your Python executable path
pyEnv = pyenv('Version', 'C:/Users/Ariel/AppData/Local/Programs/Python/Python312/python.exe');  % Replace with your Python path

% Display the Python environment to verify setup
disp('Python environment setup:');
disp(pyEnv);

% Step 2: Calling Python Functions from MATLAB
disp('Calling a Python function to create a list and get its length:');
mylist = py.list({'apple', 'banana', 'orange'});  % Python list
len_of_list = py.len(mylist);  % Get the length using Python's len() function
disp(['Length of Python list: ', char(len_of_list)]);  % Display the length

% Step 3: Using Python Libraries in MATLAB
disp('Calling Python math library to compute square root of 25:');
py_math = py.importlib.import_module('math');  % Importing the Python math module
result = py_math.sqrt(25);  % Using Python's math.sqrt function
disp(['Square root of 25 using Python math module: ', num2str(double(result))]);  % Convert to double and display

% Step 4: Running Custom Python Scripts
disp('Calling custom Python script (greet.py):');

% Make sure the greet.py script is in the same directory or MATLAB path
% greet.py content:
% def greet(name):
%     return "Hello, " + name + " from Python!"

% Import the Python script greet.py
py_script = py.importlib.import_module('greet');  
greeting = py_script.greet('MATLAB');  % Call the greet function from greet.py
disp(['Greeting from Python script: ', char(greeting)]);  % Display the greeting

