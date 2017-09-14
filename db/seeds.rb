# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Body.create([
  { name: 'shoulders', img: 'https://i.imgur.com/hfON1u9.png'},
  { name: 'abdominals', img: 'https://i.imgur.com/sQFbg6D.png'},
  { name: 'adductors', img: 'https://i.imgur.com/WqIWYkQ.png'},
  { name: 'upper back', img: 'https://i.imgur.com/sCtYzvx.png'},
  { name: 'triceps', img: 'https://i.imgur.com/sMBQMVa.png'},
  { name: 'wrists', img: 'https://i.imgur.com/WRjFn2j.png'},
  { name: 'gluteals', img: 'https://i.imgur.com/8koKdVb.png'},
  { name: 'biceps', img: 'https://i.imgur.com/2yHxKjz.png'},
  { name: 'hamstrings', img: 'https://i.imgur.com/1Wk6R7a.png'},
  { name: 'lower back', img: 'https://i.imgur.com/8t90cnB.png'},
  { name: 'calves', img: 'https://i.imgur.com/Qkunefp.png'},
  { name: 'pectorals', img: 'https://i.imgur.com/u25C4jw.png'},
  { name: 'quadriceps', img: 'https://i.imgur.com/0YTfjrx.png'},
  { name: 'trapezii', img: 'https://i.imgur.com/2AfXuym.png'}
])

Exercise.create([
  { name: 'curls', img: '', desc: 'curls desc', time: '00:02:00' },
  { name: 'concentration curls', img: '', desc: 'concentration curls desc', time: '00:02:00' },
  { name: 'back press', img: '', desc: 'back press desc', time: '00:01:00' },
  { name: 'front press', img: '', desc: 'front press desc', time: '00:01:00' },
  { name: 'bench press', img: '', desc: 'bench press desc', time: '00:01:00' },
  { name: 'incline press', img: '', desc: 'curls desc', time: '00:01:00' },
  { name: 'chin ups', img: '', desc: 'chin ups desc', time: '00:01:00' },
  { name: 'lat pulldowns', img: '', desc: 'lat pulldowns desc', time: '00:01:00' },
  { name: 'dumbell squats', img: '', desc: 'dumbell squats desc', time: '00:01:00' },
  { name: 'squats', img: '', desc: 'squats desc', time: '00:01:00' },
  { name: 'lunges', img: '', desc: 'lunges', time: '00:02:00' },
  { name: 'cable back kicks', img: '', desc: 'cable kick backs desc', time: '00:02:00' },
  { name: 'crunches', img: '', desc: 'curls desc', time: '00:01:00' },
  { name: 'sit ups', img: '', desc: 'sit ups desc', time: '00:01:00' },
])
