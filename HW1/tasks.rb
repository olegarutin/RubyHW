p '1.Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p '(1..10).to_a.partition.with_index { |e, i| i.even? }'
p (1..10).to_a.partition.with_index { |e, i| i.even? }
p '--------------'
p '2.Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - с четными.'
p '(1..10).to_a.partition.with_index { |e, i| i.odd? }'
p (1..10).to_a.partition.with_index { |e, i| i.odd? }
p '--------------'
p '5.Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'arr = (1..10).to_a'
p 'arr.each_with_index { |x, i| arr[i] += arr[0] if x.even? && (x != arr[0] && x != arr[-1]) }'
  arr = (1..10).to_a
p arr.each_with_index { |x, i| arr[i] += arr[0] if x.even? && (x != arr[0] && x != arr[-1]) }
p '--------------'
p '6.Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'arr = (1..10).to_a'
p 'arr.each_with_index { |x, i| arr[i] += arr[-1] if x.even? && (x != arr[0] && x != arr[-1]) }'
  arr = (1..10).to_a
p arr.each_with_index { |x, i| arr[i] += arr[-1] if x.even? && (x != arr[0] && x != arr[-1]) }
p '--------------'
p '7.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'arr = (1..10).to_a'
p 'arr.each_with_index { |x, i| arr[i] += arr[-1] if x.odd? && (x != arr[0] && x != arr[-1]) }'
  arr = (1..10).to_a
p arr.each_with_index { |x, i| arr[i] += arr[-1] if x.odd? && (x != arr[0] && x != arr[-1]) }
p '--------------'
p '8.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'arr = (1..10).to_a'
p 'arr.each_with_index { |x, i| arr[i] += arr[0] if x.odd? && (x != arr[0] && x != arr[-1]) }'
  arr = (1..10).to_a
p arr.each_with_index { |x, i| arr[i] += arr[0] if x.odd? && (x != arr[0] && x != arr[-1]) }
p '--------------'
p '9.Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p 'arr = (-2..5).to_a'
p 'arr.each { |x| x > 0 ? x = arr.min : x }'
  arr = (-2..5).to_a
p arr.map { |x| x > 0 ? x = arr.min : x }
p '--------------'
p '10.Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p 'arr = (-2..5).to_a'
p 'arr.each { |x| x > 0 ? x = arr.max : x }'
  arr = (-2..5).to_a
p arr.map { |x| x > 0 ? x = arr.max : x }
p '--------------'
p '11.Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p 'arr = (-2..5).to_a'
p 'arr.each { |x| x < 0 ? x = arr.min : x }'
  arr = (-2..5).to_a
p arr.map { |x| x < 0 ? x = arr.min : x }
p '--------------'
p '12.Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p 'arr = (-2..5).to_a'
p 'arr.each { |x| x < 0 ? x = arr.max : x }'
  arr = (-2..5).to_a
p arr.map { |x| x < 0 ? x = arr.max : x }
p '--------------'
p '13.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
p '(1..10).to_a.rotate(1)'
p (1..10).to_a.rotate(1)
p '--------------'
p '14.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
p '(1..10).to_a.rotate(-1)'
p (1..10).to_a.rotate(-1)
p '--------------'
p '15.Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.'
p 'arr = [1, 2, 3, 4, 5, 6]'
p 'arr.each_cons(2).map.all? {|a, b| b - a == arr[2] - arr[1] } ? arr[1] - arr[0] : nil'
  arr = (1..10).to_a
p arr.each_cons(2).map.all? {|a, b| b - a == arr[2] - arr[1] } ? arr[1] - arr[0] : nil
p '--------------'
p '16.Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'
p 'arr = [1, 3, 9, 27, 81]'
p 'arr.each_cons(2).map { |x| x = x[1] / x[0] }.uniq.count == 1 ? arr[1] / arr[0] : nil'
  arr = [1, 3, 9, 27, 81]
p arr.each_cons(2).map { |x| x = x[1] / x[0] }.uniq.count == 1 ? arr[1] / arr[0] : nil
p '--------------'
p '17.Дан целочисленный массив. Найти количество его локальных максимумов.'
p 'max = []'
p '[10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| max << x[1] if x[0] < x[1] && x[1] > x[2] }'
p 'max.count'
  max = []
  [10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| max << x[1] if x[0] < x[1] && x[1] > x[2] }
p max.count
p '--------------'
p '18.Дан целочисленный массив. Найти количество его локальных минимумов.'
p 'min = []'
p '[10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| min << x[1] if x[0] > x[1] && x[1] < x[2] }'
p 'min.count'
  min = []
  [10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| min << x[1] if x[0] > x[1] && x[1] < x[2] }
p min.count
p '--------------'
p '19.Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
p 'maximum = []'
p '[10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| maximum << x[1] if x[0] < x[1] && x[1] > x[2] }'
p 'maximum.sort.last'
  maximum = []
  [10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| maximum << x[1] if x[0] < x[1] && x[1] > x[2] }
p maximum.max
p '--------------'
p '20.Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
p 'minimum = []'
p '[10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| minimum << x[1] if x[0] > x[1] && x[1] < x[2] }'
p 'minimum.min'
  minimum = []
  [10, 10, 10, 3, 4, 2, 1, 5, 3].each_cons(3).each_with_index { |x, i| minimum << x[1] if x[0] > x[1] && x[1] < x[2] }
p minimum.min
p '--------------'
p '21.Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.'
p 'arr = [10, 5, 1, 3 ,9, 27, 81, 1, -1, 10, 11, 1]'
p 'count = []'
p 'arr.each_with_index { |e, i| (i != (arr.size - 1) && e < arr[i + 1]) ? count << e : count << ' ' }'
p 'count.join().split(" ").size'
  arr = [10, 5, 1, 3 ,9, 27, 81, 1, -1, 10, 11, 1]
  count = []
  arr.each_with_index { |e, i| (i != (arr.size - 1) && e < arr[i + 1]) ? count << e : count << ' ' }
p count.join().split(" ").size
p '--------------'
p '22.Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.'
p 'arr = [10, 5, 1, 3 ,9, 27, 81, 1, -1, 10, 11, 1]'
p 'count = []'
p 'arr.each_with_index { |e, i| (i != (arr.size - 1) && e > arr[i + 1]) ? count << e : count << ' ' }'
p 'count.join().split(" ").size'
  arr = [10, 5, 1, 3 ,9, 27, 81, 1, -1, 10, 11, 1]
  count = []
  arr.each_with_index { |e, i| (i != (arr.size - 1) && e > arr[i + 1]) ? count << e : count << ' ' }
p count.join().split(" ").size
p '--------------'
p '25.Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
p 'input = (-4..4).to_a'
p 'output = []'
p 'input.each { |x| x > 0 ? output << input[0] && output << x : output << x }'
p 'output'
  input = (-4..4).to_a
  output = []
  input.each { |x| x > 0 ? output << input[0] && output << x : output << x }
p output
p '--------------'
p '26.Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
p 'input = (-4..4).to_a'
p 'output = []'
p 'input.each { |x| x < 0 ? output << input[0] && output << x : output << x }'
p 'output'
  input = (-4..4).to_a
  output = []
  input.each { |x| x < 0 ? output << input[0] && output << x : output << x }
p output
p '--------------'
p '27.Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
p 'input = (-4..4).to_a'
p 'output = []'
p 'input.each { |x| x > 0 ? output << input[0] && output << x : output << x }'
p 'output'
  input = (-4..4).to_a
  output = []
  input.each { |x| x > 0 ? output << x && output << input[0] : output << x }
p output
p '--------------'
p '28.Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательным элемента нулевой элемент.'
p 'input = (-4..4).to_a'
p 'output = []'
p 'input.each { |x| x < 0 ? output << input[0] && output << x : output << x }'
p 'output'
  input = (-4..4).to_a
  output = []
  input.each { |x| x < 0 ? output << x && output << input[0] : output << x }
p output
p '--------------'
p '29.Дан целочисленный массив. Упорядочить его по возрастанию.'
p 'arr = [3, 5, 1, 6, 11, -3, -5, -1, 2].sort'
p  arr = [3, 5, 1, 6, 11, -3, -5, -1, 2].sort
p '--------------'
p '30.Дан целочисленный массив. порядочить его по убыванию.'
p 'arr = [3, 5, 1, 6, 11, -3, -5, -1, 2].sort.reverse'
p  arr = [3, 5, 1, 6, 11, -3, -5, -1, 2].sort.reverse
p '--------------'
p '31.Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
p 'arr = [3, 5, 1, 6, 11, -3, -5, -1, 2]'
p 'sorted = arr.sort.reverse'
p 'sorted.map { |x| arr.index(x) }'
  arr = [3, 5, 1, 6, 11, -3, -5, -1, 2]
  sorted = arr.sort.reverse
p sorted.map { |x| arr.index(x) }
p '--------------'
p '32.Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
p 'arr = [3, 5, 1, 6, 11, -3, -5, -1, 2]'
p 'sorted = arr.sort'
p 'sorted.map { |x| arr.index(x) }'
  arr = [3, 5, 1, 6, 11, -3, -5, -1, 2]
  sorted = arr.sort
p sorted.map { |x| arr.index(x) }
p '--------------'
p '33.Дан целочисленный массив. Найти индекс минимального элемента.'
p 'a = [3, 5, 1, 6, 11, -3, -5, -1, 2]'
p 'a.index(a.min)'
  a = [3, 5, 1, 6, 11, -3, -5, -1, 2]
p a.index(a.min)
p '--------------'
p '34.Дан целочисленный массив. Найти индекс максимального элемента.'
p 'a = [3, 5, 1, 6, 11, -3, -5, -1, 2].index(a.max)'
p a = [3, 5, 1, 6, 11, -3, -5, -1, 2].index(a.max)
p '--------------'
p '35.Дан целочисленный массив. Найти индекс первого минимального элемента.'
p 'a = [3, -5, 1, 6, 11, -3, -5, -1, 2]'
p 'a.index(a.min)'
  a = [3, -5, 1, 6, 11, -3, -5, -1, 2]
p a.index(a.min)
p '--------------'
p '36.Дан целочисленный массив. Найти индекс первого максимального элемента.'
p 'a = [3, 5, 11, 6, 11, -3, -5, -1, 2].index(a.max)'
p a = [3, 5, 11, 6, 11, -3, -5, -1, 2].index(a.max)
p '--------------'
p '37.Дан целочисленный массив. Найти индекс последнего минимального элемента.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, -1, 2]'
p 'arr.rindex(arr.min)'
  arr = [3, -5, 1, 6, 11, -3, -5, -1, 2]
p arr.rindex(arr.min)
p '--------------'
p '38.Дан целочисленный массив. Найти индекс последнего максимального элемента.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'arr.rindex(arr.max)'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
p arr.rindex(arr.max)
p '--------------'
p '39.Дан целочисленный массив. Найти количество минимальных элементов.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'arr.count(arr.min)'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
p arr.count(arr.min)
p '--------------'
p '40.Дан целочисленный массив. Найти количество максимальных элементов.'
p 'arr = [3, -5, 1, 6, 11, 11, 11, 11, 2]'
p 'arr.count(arr.max)'
  arr = [3, -5, 1, 6, 11, 11, 11, 11, 2]
p arr.count(arr.max)
p '--------------'
p '41.Дан целочисленный массив. Найти минимальный четный элемент'
p 'array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.even? }.first[0]'
p array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.even? }.first[0]
p '--------------'
p '42.Дан целочисленный массив. Найти минимальный нечетный элемент'
p 'array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.odd? }.first[0]'
p array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.odd? }.first[0]
p '--------------'
p '43.Дан целочисленный массив. Найти максимальный четный элемент'
p 'array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.even? }.first[-1]'
p array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.even? }.first[-1]
p '--------------'
p '44.Дан целочисленный массив. Найти максимальный нечетный элемент'
p 'array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.odd? }.first[-1]'
p array = [3, -5, 1, 2, 11, 6, 5, 2].sort.partition.each { |x| x.odd? }.first[-1]
p '--------------'
p '45.Дан целочисленный массив. Найти минимальный положительный элемент.'
p '(-4..4).to_a.sort.partition.each { |x| x.positive? }.first[0]'
p (-4..4).to_a.sort.partition.each { |x| x.positive? }.first[0]
p '--------------'
p '46.Дан целочисленный массив. Найти максимальный отрицательный элемент.'
p '(-4..4).to_a.sort.partition.each { |x| x.positive? }.last[0]'
p (-4..4).to_a.sort.partition.each { |x| x.positive? }.last[0]
p '--------------'
p '47.Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
p 'range = (3..5)'
p 'arr = (1..10).to_a.sort.grep(range).first'
  range = (3..5)
p arr = (1..10).to_a.sort.grep(range).first
p '--------------'
p '48.Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
p 'range = (3..5)'
p 'arr = (-4..4).to_a.sort.grep(range).last'
  range = (3..5)
p arr = (-4..4).to_a.sort.grep(range).last
p '--------------'
p '49.Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p 'arr = [3, 5, 1, 2, 11, -6, 5, 2]'
p 'arr.index(arr.min)'
  arr = [3, 5, 1, 2, 11, -6, 5, 2]
p arr.index(arr.min)
p '--------------'
p '50.Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p 'arr = [3, 5, 1, 2, 11, -6, 5, 2]'
p 'arr.index(arr.max)'
  arr = [3, 5, 1, 2, 11, -6, 5, 2]
p arr.index(arr.max)
p '--------------'
p '51.Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
p 'arr = [3, 5, 1, 2, 11, -6, 5, 2]'
p 'arr[(arr.index(arr.max) + 1)..-1].count'
  arr = [3, 5, 1, 2, 11, -6, 5, 2]
p arr[(arr.index(arr.max) + 1)..-1].count
p '--------------'
p '52.Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
p 'arr = [3, 5, 1, 2, 11, -6, 5, 2]'
p 'arr[(arr.index(arr.min) + 1)..-1].count'
  arr = [3, 5, 1, 2, 11, -6, 5, 2]
p arr[(arr.index(arr.min) + 1)..-1].count
p '--------------'
p '53.Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'max = []'
p 'arr.each_with_index { |e, i| max << i if e == arr.max }'
p 'arr[0..(max.last - 1)].count'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  max = []
  arr.each_with_index { |e, i| max << i if e == arr.max }
p arr[0..(max.last - 1)].count
p '--------------'
p '54.Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'min = []'
p 'arr.each_with_index { |e, i| min << i if e == arr.min }'
p 'arr[0..(min.last - 1)].count'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  min = []
  arr.each_with_index { |e, i| min << i if e == arr.min }
p arr[0..(min.last - 1)].count
p '--------------'
p '55.Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'max = []'
p 'arr.each_with_index { |e, i| max << i if e == arr.max }'
p 'p arr[(max.last + 1).. -1].count'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  max = []
  arr.each_with_index { |e, i| max << i if e == arr.max }
p arr[(max.last + 1).. -1].count
p '--------------'
p '56.Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'min = []'
p 'arr.each_with_index { |e, i| min << i if e == arr.min }'
p 'arr[(min.last + 1)..-1].count'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  min = []
  arr.each_with_index { |e, i| min << i if e == arr.min }
p arr[(min.last + 1)..-1].count
p '--------------'
p '57.Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
p  'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'i = ([] << arr.index(arr.min) << arr.index(arr.max)).sort[0]'
p arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
p i = ([] << arr.index(arr.min) << arr.index(arr.max)).sort[0]
p '--------------'
p '58.Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'max = []'
p 'arr.each_with_index { |e, i| max << i if e == arr.max || e == arr.min }'
p 'max.last'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  max = []
  arr.each_with_index { |e, i| max << i if e == arr.max || e == arr.min }
p max.last
p '--------------'
p '59.Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'min = []'
p 'arr.each_with_index { |e, i| min << i if e == arr.min }'
p 'arr[(arr.index(arr.min) + 1)...min.last]'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  min = []
  arr.each_with_index { |e, i| min << i if e == arr.min }
p arr[(arr.index(arr.min) + 1)...min.last].count
p '--------------'
p '60.Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.'
p 'arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]'
p 'max = []'
p 'arr.each_with_index { |e, i| max << i if e == arr.max }'
p 'arr[(arr.index(arr.max) + 1)...max.last]'
  arr = [3, -5, 1, 6, 11, -3, -5, 11, 2]
  max = []
  arr.each_with_index { |e, i| max << i if e == arr.max }
p arr[(arr.index(arr.max) + 1)...max.last].count
p '--------------'
p '61.Дан целочисленный массив. Найти два наибольших элемента.'
p '[10, 2, 15, 4, 10, 12, 5].max(2)'
p [10, 2, 15, 4, 10, 12, 5].max(2)
p '--------------'
p '62.Дан целочисленный массив. Найти два наименьших элемента.'
p '[10, 2, 15, 4, 10, 12, 5].min(2)'
p [10, 2, 15, 4, 10, 12, 5].min(2)
p '--------------'
p '63.Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов.'
p 'result = []'
p 'array = [1, 1, 3, -1, -6, -6, 1, -6]'
p 'array.each { |x| x == array.min ? result << 1 : result << " " }'
p 'result.join.split(" ").map(&:chars).map(&:count).sort[-1]'
  result = []
  array = [1, 1, 3, -1, -6, -6, 1, -6]
  array.each { |x| x == array.min ? result << 1 : result << " " }
p result.join.split(" ").map(&:chars).map(&:count).sort[-1]
p '--------------'
p '64.Дан целочисленный массив. Найти максимальное количество подряд идущих максимальных элементов.'
p 'result = []'
p 'array = [1, 1, 3, -1, -6, -6, 1, -6]'
p 'array.each { |x| x == array.max ? result << 1 : result << " " }'
p 'result.join.split(" ").map(&:chars).map(&:count).sort[-1]'
  result = []
  array = [1, 1, 3, 3, -1, -6, -6, 3, 3, 3, 1, -6]
  array.each { |x| x == array.max ? result << 1 : result << " " }
p result.join.split(" ").map(&:chars).map(&:count).sort[-1]
p '--------------'
p '65.Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
p '(1..10).to_a.partition(&:even?)'
p (1..10).to_a.partition(&:even?)
p '--------------'
p '66.Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
p '(1..10).to_a.partition(&:odd?)'
p (1..10).to_a.partition(&:odd?)
p '--------------'
p '67.Дан целочисленный массив. Проверить, чередуются ли в нем четные и нечетные числа.'
p 'result = [[],[]]'
p 'array = [1, 1, 3, 3, -1, -6, -6, 3, 3, 3, 1, -6]'
p 'array.each do |e|'
p   'if  e == array[0]'
p     'result[0] << e'
p   'elsif (result[0].last.odd? && e.even?) || (result[0].last.even? && e.odd?)'
p     'result[0] << e | result[1] << true'
p   'else'
p     'result[1] << false'
p   'end'
p 'end'
p 'result[1].all?'
  result = [[],[]]
  array = [1, 1, 3, 3, -1, -6, -6, 3, 3, 3, 1, -6]
  array.each do |e|
    if  e == array[0]
      result[0] << e
    elsif (result[0].last.odd? && e.even?) || (result[0].last.even? && e.odd?)
      result[0] << e | result[1] << true
    else
      result[1] << false
    end
  end
p result[1].all?
p '--------------'
p '68.Дан целочисленный массив. Проверить, чередуются ли в нем положительные и отрицательные числа.'
p 'result = [[],[]]'
p 'array = [1, -2, 1, -2]'
p 'array.each do |e|'
p   'if  e == array[0]'
p     'result[0] << e'
p   'elsif (result[0].last.odd? && e.even?) || (result[0].last.even? && e.odd?)'
p     'result[0] << e | result[1] << true'
p   'else'
p     'result[1] << false'
p   'end'
p 'end'
p 'result[1].all?'
  result = [[],[]]
  array = [1, -2, 1, -2]
  array.each do |e|
    if  e == array[0]
      result[0] << e
    elsif (result[0].last.positive? && e.negative?) || (result[0].last.negative? && e.positive?)
      result[0] << result[1] << true
    else
      result[1] << false
    end
  end
p result[1].all?
p '--------------'
p '71.Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.'
p 'arr = [6, 1, 1, 5, 2, 3, 3, 3, 4]'
p 'result = []'
p 'arr.map { |x| result << x if arr.count(x) >= 2 }'
p 'result'
  arr = [6, 1, 1, 5, 2, 3, 3, 3, 4]
  result = []
  arr.map { |x| result << x if arr.count(x) >= 2 }
p result
p '--------------'
p '72.Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз.'
p '[6, 1, 1, 5, 2, 3, 3, 3, 4].uniq'
p [7, 7, 7, 6, 1, 1, 5, 2, 3, 3, 3, 4].uniq
p '--------------'
p '73.Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.'
p '[6, 1, 1, 5, 2, 3, 3, 3, 4].uniq'
p 'result = []'
p 'arr.map { |x| result << x if arr.count(x) != 2 }'
p 'result'
  arr = [3, 6, 1, 1, 5, 5, 3, 3, 3, 4]
  result = []
  arr.map { |x| result << x if arr.count(x) != 2 }
p result
p '--------------'
p '74.Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.'
p 'arr = [6, 1, 1, 5, 2, 3, 3, 3, 4]'
p 'result = []'
p 'arr.map { |x| result << x if arr.count(x) != 3 }'
p 'result'
  arr = [5, 5, 5, 2, 3, 3, 3, 4]
  result = []
  arr.map { |x| result << x if arr.count(x) != 3 }
p result
p '--------------'
p '75.Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.'
p '(-4..4).to_a.map(&:abs).sum / a.size.to_f'
p (-4..4).to_a.map(&:abs).sum / a.size.to_f
p '--------------'
p '76.Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.'
p '(-4..4).to_a.map(&:abs).sum / a.size.to_f'
p (-4..4).to_a.map { |x| x *x }.sum / a.size.to_f
p '--------------'
p '77.Дано целое число. Найти сумму его цифр.'
p '654.to_s.chars.map(&:to_i).sum'
p  654.to_s.chars.map(&:to_i).sum
p '--------------'
p '78.Дано целое число. Найти произведение его цифр.'
p '333.to_s.chars.map(&:to_i).inject(:*)'
333.to_s.chars.map(&:to_i).inject(:*)
p '--------------'
p '79.Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.'
p 'arr = (-4..4).to_a'
 multiply = []
 arr.each { |x| x.negative? ? multiply << x ** 2 : multiply << x ** 3 }
p multiply
arr = (-4..4).to_a
 multiply = []
 arr.each { |x| x.negative? ? multiply << x ** 2 : multiply << x ** 3 }
p multiply
p '--------------'
p '80.Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне (исключая сами эти числа), в порядке их возрастания, а также размер этого массива.'
p 'range = (5..20)'
p 'array = ((range.first + 1)...range.last).to_a'
p 'length = arr.size'
  range = (5..20)
p array = ((range.first + 1)...range.last).to_a
p length = array.size
p '--------------'
p '81.Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне (исключая сами эти числа), в порядке их убывания, а также размер этого массива.'
p 'range = (5..20)'
p 'array = ((range.first + 1)...range.last).to_a'
p 'length = arr.size'
  range = (5..20)
p array = ((range.first + 1)...range.last).to_a.reverse
p length = array.size
p '--------------'
p '86.Дан целочисленный массив. Найти среднее арифметическое его элементов.'
p 'a = (3..4).to_a'
p 'a.sum / a.size.to_f'
 a = (3..4).to_a
p a.sum / a.size.to_f
p '--------------'
p '87.Дан целочисленный массив. Найти все четные элементы.'
p '(-4..4).to_a.partition { |x| x.even? }.first'
p (-4..4).to_a.partition { |x| x.even? }.first
p '--------------'
p '88.Дан целочисленный массив. Найти количество четных элементов.'
p '(-4..4).to_a.partition { |x| x.even? }.first.count'
p (-4..4).to_a.partition { |x| x.even? }.first.count
p '--------------'
p '89.Дан целочисленный массив. Найти все нечетные элементы.'
p '(-4..4).to_a.partition { |x| x.even? }.last'
p (-4..4).to_a.partition { |x| x.even? }.last
p '--------------'
p '90.Дан целочисленный массив. Найти количество нечетных элементов.'
p '(-4..4).to_a.partition { |x| x.even? }.last.count'
p (-4..4).to_a.partition { |x| x.even? }.last.count
p '--------------'
p '91.Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.'
p 'k = 11'
p 'arr = (10..14).to_a'
p 'arr.find_all { |x| x < k ? true : false }.empty? ? false : true'
   k = 11
 arr = (10..14).to_a
p arr.find_all { |x| x < k ? true : false }.empty? ? false : true
p '--------------'
p '92.Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false'
p 'k = 13'
p 'arr = (10..14).to_a'
p 'arr.find_all { |x| x > k ? true : false }.empty? ? false : true'
  k = 13
  arr = (10..14).to_a
p arr.find_all { |x| x > k ? true : false }.empty? ? false : true
p '--------------'
p '93.Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false.'
p 'k = 15'
p 'arr = (10..14).to_a'
p 'result = []'
p 'arr.find_all { |x| x < k ? result << true : result << false }'
p 'result.all?'
  k = 15
  arr = (10..14).to_a
  result = []
  arr.find_all { |x| x < k ? result << true : result << false }
p result.all?
p '--------------'
p '94.Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false.'
p 'k = 6'
p 'arr = (10..14).to_a'
p 'result = []'
p 'arr.find_all { |x| x > k ? result << true : result << false }'
p 'result.all?'
  k = 6
  arr = (10..14).to_a
  result = []
  arr.find_all { |x| x > k ? result << true : result << false }
p result.all?
p '--------------'
p '95.Дан целочисленный массив и число К. Вывести количество элементов, меньших К.'
p 'k = 13'
p 'arr = (10..14).to_a'
p 'result = []'
p 'arr.find_all { |x| x < k }.count'
  k = 13
  arr = (10..14).to_a
  result = []
p  arr.find_all { |x| x < k }.count
p '--------------'
p '96.Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К.'
p 'k = 12'
p 'arr = (10..14).to_a'
p 'result = []'
p 'arr.find_all { |x| x > k }'
  k = 12
  arr = (10..14).to_a
  result = []
p  arr.index(arr.find_all { |x| x > k }.first)
p '--------------'
p '97.Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К.'
p 'k = 15'
p 'arr = (10..14).to_a'
p 'result = []'
p 'arr.find_all { |x| x < k }'
  k = 15
  arr = (10..14).to_a
  result = []
p  arr.index(arr.find_all { |x| x < k }.last)
p '--------------'
p '98.Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.'
p 'arr = [2, 3, 1, 19, 2, 5, 1]'
p 'result = []'
p 'i = (1...arr.size).select{ |x| result << x if arr[x] < arr[x-1] }'
p 'result, result.count'
  arr = [2, 3, 1, 19, 2, 5, 1]
  result = []
  i = (1...arr.size).select{ |x| result << x if arr[x] < arr[x-1] }
p result, result.count
p '--------------'

p '99.Дан целочисленный массив. Вывести индексы элементов, которые меньше своего правого соседа, и количество таких чисел.'
p 'arr = [2, 3, 1, 19, 2, 5, 1]'
p 'result = []'
p 'i = (1...arr.size).select{ |x| result << x -= 1 if arr[x] > arr[x-1] }'
p 'result, result.count'
  arr = [2, 3, 1, 19, 2, 5, 1]
  result = []
  i = (1...arr.size).select{ |x| result << x -= 1 if arr[x] > arr[x-1] }
p result, result.count
p '--------------'
p '100.Дан целочисленный массив. Вывести индексы элементов, которые больше своего правого соседа, и количество таких чисел.'
p 'arr = [2, 3, 1, 19, 2, 5, 1]'
p 'result = []'
p 'i = (1...arr.size).select{ |x| result << x if arr[x] > arr[x-1] }'
p 'result, result.count'
  arr = [2, 3, 1, 19, 2, 5, 1]
  result = []
  i = (1...arr.size).select{ |x| result << x if arr[x] > arr[x-1] }
p result, result.count
p '--------------'