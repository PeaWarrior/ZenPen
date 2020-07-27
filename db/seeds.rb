User.destroy_all
Audio.destroy_all
Post.destroy_all
Tag.destroy_all


Audio.create(
    title: "Body Scan Living Presence",
    length: 11,
    file: "http://hwcdn.libsyn.com/p/8/5/6/856a28f0ce8c9310/2015-02-18-Meditation-Body-Scan-Living-Presence-11min-TaraBrach.mp3?c_id=8405335&cs_id=8405335&expiration=1595864202&hwt=3bd486655f952ef19dfc61f001b50d56")
Audio.create(
    title: "In The Body",
    length: 25,
    file: "https://www.tarabrach.com/audio/2011-04-27-Guided-Meditation-In-the-Body-TaraBrach.mp3"
)
Audio.create(
    title: "Arriving in Mindful Presence",
    length: 5,
    file: "http://hwcdn.libsyn.com/p/e/9/4/e949a19e93c5ba44/2016-05-18-Meditation-Arriving-in-Mindful-Presence-5-min-TaraBrach.mp3?c_id=12273897&cs_id=12273897&expiration=1595863624&hwt=d833254c9b5883f99b2438c585061ddf")
Audio.create(
    title: "Coming Home to Presence",
    length: 13,
    file: "http://hwcdn.libsyn.com/p/c/4/0/c40664f32c9c18fd/2012-12-12-Meditation-Coming-Home-to-Presence-TaraBrach-hq.mp3?c_id=7246586&cs_id=7246586&expiration=1595864492&hwt=09a54acf17c6bb3c15da5681684743d8")


x = User.create(username: "Ahn", password: "123")
z = User.create(username: "jax", password: "123")

x.posts << Post.create(title: "w/e", content: "testt content")
x.posts << Post.create(title: "w/e", content: "testt content")
x.posts << Post.create(title: "w/e", content: "testt content")

x.audios << Audio.create(
    title: "Coming Home to Presence",
    length: 13,
    file: "http://hwcdn.libsyn.com/p/c/4/0/c40664f32c9c18fd/2012-12-12-Meditation-Coming-Home-to-Presence-TaraBrach-hq.mp3?c_id=7246586&cs_id=7246586&expiration=1595864492&hwt=09a54acf17c6bb3c15da5681684743d8")

Tag.create(name: "Humour")


