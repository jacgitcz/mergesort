# Merge Sort (Recursive)

Odin Project : Ruby Programming : Recursion

This implements a recursive mergesort.  It was designed around integer arrays, but works for strings too,
because the only operations on individual elements are comparison and copying. The array should contain a single type of object, otherwise the comparisons will fail.  It seems to be robust (IRB test) for pathological input (empty array for sorting, or initial values running from high to low).