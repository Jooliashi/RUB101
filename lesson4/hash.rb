def select_fruit(produce_list)
  fruits = {}

  produce_list.each do |key, value|
    if value == 'Fruit'
      fruits[key] = value
    end
  end

  fruits
end
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
p select_fruit(produce)

