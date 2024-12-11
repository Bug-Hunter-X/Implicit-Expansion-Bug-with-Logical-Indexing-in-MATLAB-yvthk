# Implicit Expansion Bug with Logical Indexing in MATLAB

This repository demonstrates an uncommon bug in MATLAB related to implicit expansion with logical indexing. The bug primarily occurs when working with conditional logic and scalar inputs.

## Bug Description
The MATLAB function `myFunction` exhibits unexpected behavior when the input is a scalar and the logical indexing results in an empty array.

The core issue lies in how MATLAB handles implicit expansion in such situations. While implicit expansion works correctly in some contexts, it fails when the indexed variable is a scalar and the logical index produces an empty array.  This leads to incorrect or unexpected results.

## How to Reproduce
1. Save the provided `bug.m` file.
2. Run the function with different scalar inputs (less than or equal to 5) and observe the unexpected behavior.
3. Compare the results with those produced by `bugSolution.m` which corrects the issue.

## Solution
The `bugSolution.m` file provides a corrected version of the function that addresses the implicit expansion issue. This is achieved by explicitly checking if the logical index results in an empty array before attempting the implicit expansion. A workaround is to explicitly create an array of the correct size before applying the implicit expansion operation.