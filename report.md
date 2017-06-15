
# Daily Report 

@(Ruby)[15/06/2017|Do Hong Quan]
Ruby basic knowledge day 3 
Learn about data structure, specifically Arrays.

----------

[TOC]

## OVERVIEW OF ARRAYS
### Concept
- Ruby arrays are ordered, integer-indexed collections of any object. Each element in an array is associated with and referred to by an index.
- Array indexing starts at 0, as the other language. 
- A negative index is assumed relative to the end of the array such as, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
- Ruby arrays hold a combination of object from the data types.
### Creating Arrays
- There are so many ways to create arrays.
- Let's try to talk about them clearly.
	`Array.new()` : this will create an empty array.
	`Array.new(20)` : this will create an array with it's length=20.
	`Array.new(4,"Quan")` : this will create an array with 4 objects, and their value is "Quan".
	`nums = Array.new(10) { |e| e = e * 2 }` this will create an array like this *[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]*
 `Array.[] (1, 2, 3, 4,5)` && `Array[1, 2, 3, 4, 5]` another way to create a specific array.
` Array(0..9)` : we also add the range like this to create a continuous array.

##ADVANDCE OF ARRAYS
###Taking value of their elements
- we have 2 traditional ways to expose to the value of one object of an array named **arr**. That is:
	- `arr.at(index)`
	- `arr[index]`
- Besides that, Ruby also have a magic ways to touch the value of the last element and we no need to know the length of its array. *That is using the negative index. * 
	- index= -1 that is the last element. Or `arr.last` or `arr[Length-1]`
	- index= -2 that is the next to last element.
	- so on.
###Adding more elements into the array
- we use 3 ways. That is:
	- `array.push(" value")` &&`array<<"value" ` will add elements at the end of array.
	-  `array[index]= value` this way is actually modifing the value of an element. However, if we fill the index with the number of the end of array, Ruby will add that new element for you.
	- `array.insert(index) ` : will add element in the proper index.
###Common function of array
- `array[start, length]` : take a new array with the value from start index of its old array with the length. 
- `array[start, length] = arr_`  : we also modify the value by this way. 
	- Value of *array* will be modify by *arr_* from start index with the first element of arr_. 
	- If the length of *array* is the same with the length of *arr_*, this will be a great case.
	- if the length of *array* is larger than the length of *arr_*, the value is also modified orderly. However, there are some elements of *array* is not modified, they will be deleted. So *array* will reduce the length.
	- In contrast, the values are also modified orderly. Because of the length of arr_ is bigger, all the remaining elements will be added after the current index in *array*.
- `arr. collect`Creates a new array containing the values returned by the block with the value of elements.
- `arr.map` Creates a new array containing the values returned by the block with the value of elements and the index
ex:
```
a = [ "a", "b", "c", "d" ]
a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
a                                #=> ["a", "b", "c", "d"]
```

- `arr. flatten`: Returns a new array that is a one-dimensional flattening array.

- ` arr.freeze `


