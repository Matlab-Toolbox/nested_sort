NestedSort
==========

nestedtedSortStruct and nestedSortStruct2 do a nested sort of a one-dimensional
struct array by two different methods. That is, the struct array is sorted by
one field, then those entries of the array that have the same value for that
field are sorted by a second field, etc.

If you want to sort by only one field, you can call nestedSortStruct and use a
simple string instead of a cell array for fieldNamesCell, or you can simply call
sortStruct.

The restrictions are that the fields must be single numbers or logicals, or 
chars (usually simple strings).

By default the struct array will be sorted in ascending order, but the functions
include an option to sort in descending order.

nestedSortStruct will usually be faster than nestedSortStruct2. For
nestedSortStruct, the speed of sorting is mostly independent of the order of the
fieldnames in fieldNamesCell.

For nestedSortStruct2, the order of the fields in fieldNamesCell affects the
speed. The sooner a field for which most entries in the struct array have unique
values will be used to sort the struct array (i.e., the earlier its location in 
fieldNamesCell), the faster nestedSortStruct2 will be. If a field with mostly
unique entries is the first field by which the struct array will be sorted, 
nestedSortStruct2 could be faster than nestedSortStruct.

nestedSortStruct could call sortStruct, and nestedSortStruct2 does call
sortStruct2.

