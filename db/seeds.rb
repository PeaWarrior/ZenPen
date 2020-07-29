User.destroy_all
Audio.destroy_all
Post.destroy_all
Tag.destroy_all

Audio.create([
    {
        title: "Seeing Life As It Is",
        length: 27,
        file: "http://hwcdn.libsyn.com/p/4/2/e/42e911d8ef277961/2020-04-29-Meditation-Vipassana-Seeing-Life-As-It-Is-TaraBrach.mp3?c_id=71556485&cs_id=71556485&expiration=1595897286&hwt=6cb6c580a319d902534c301208c2bf20"
    },
    {
        title: "Relaxed and Alert",
        length: 21,
        file: "http://hwcdn.libsyn.com/p/5/e/8/5e8f60599ca07876/2019-10-09-Meditation-Relaxed-and-Alert-TaraBrach.mp3?c_id=54607076&cs_id=54607076&expiration=1595896870&hwt=14be370d389fabc9a22141c26081718d"
    },
    {
        title: "Opening Our Hearts to Life as It Is",
        length: 20,
        file: "http://hwcdn.libsyn.com/p/5/2/4/524ea5493398bff2/2019-07-17-Meditation-Vipassana-20min-2016-11-23-TaraBrach.mp3?c_id=47554544&cs_id=47554544&expiration=1595896796&hwt=1d782e84ab1c537de7ccf3a0cc493f82"
    },
    {
        title: "A Practice of RAIN",
        length: 20,
        file: "http://hwcdn.libsyn.com/p/9/a/0/9a05a58e18baa062/2019-02-06-Meditation-The-Practice-of-RAIN-TaraBrach.mp3?c_id=33730193&cs_id=33730193&expiration=1595896827&hwt=b77ef2992f8d7f6edb1ef3f31301f115"
    },
    {
        title: "Coming Home with the Breath",
        length: 14,
        file: "http://hwcdn.libsyn.com/p/9/c/4/9c4127612d59a029/2018-10-03-Meditation-Coming-Home-Breath-TaraBrach.mp3?c_id=23884922&cs_id=23884922&expiration=1595896422&hwt=d113a6cbcfe7b6fd6024be8f51e2cc2f"
    },
    {
        title: "A Liberating Awareness – Embodying Full Presence",
        length: 30,
        file: "http://hwcdn.libsyn.com/p/d/7/4/d7411985e0c1b0f8/2016-12-30-Retreat-Meditation-Embodying-Full-Presence-TaraBrach.mp3?c_id=14074378&cs_id=14074378&expiration=1595897658&hwt=cb3b930f46d7aa1e109102aa7f3c6239"
    },
    {
        title: "Opening Our Hearts to Life as It Is",
        length: 20,
        file: "http://hwcdn.libsyn.com/p/5/2/4/524ea5493398bff2/2019-07-17-Meditation-Vipassana-20min-2016-11-23-TaraBrach.mp3?c_id=47554544&cs_id=47554544&expiration=1595896879&hwt=3241ab75fe579f44f52f32cf3b6283a1"
    },
    {
        title: "Arriving in Mindful Presence",
        length: 5,
        file: "http://hwcdn.libsyn.com/p/e/9/4/e949a19e93c5ba44/2016-05-18-Meditation-Arriving-in-Mindful-Presence-5-min-TaraBrach.mp3?c_id=12273897&cs_id=12273897&expiration=1595895682&hwt=d175b41ca02383bd538ec1e145a8a503"
    },
    {
        title: "Arriving in Mindful Presence",
        length: 1,
        file: "http://hwcdn.libsyn.com/p/2/b/c/2bc6bdf9a1a4ee10/2016-05-18-Meditation-Arriving-in-Mindful-Presence-1-min-TaraBrach.mp3?c_id=11758751&cs_id=11758751&expiration=1595895404&hwt=44a54fc7e754532059f15d9f7a7b1635"
    },
    {
        title: "The RAIN of Self-Compassion",
        length: 10,
        file: "http://hwcdn.libsyn.com/p/7/3/7/7372599db3e89592/2015-12-16-Meditation-The-RAIN-of-Self-Compassion-TaraBrach.mp3?c_id=10518359&cs_id=10518359&expiration=1595896201&hwt=e06a3fa79916930431afc4af37af661b"
    },
    {
        title: "Body Scan – Living Presence",
        length: 11,
        file: "http://hwcdn.libsyn.com/p/8/5/6/856a28f0ce8c9310/2015-02-18-Meditation-Body-Scan-Living-Presence-11min-TaraBrach.mp3?c_id=8405335&cs_id=8405335&expiration=1595896275&hwt=ce199cbbfb893f23dbc2f92f87ca2c40"
    },
    {
        title: "Coming Home to Presence",
        length: 13,
        file: "http://hwcdn.libsyn.com/p/c/4/0/c40664f32c9c18fd/2012-12-12-Meditation-Coming-Home-to-Presence-TaraBrach-hq.mp3?c_id=7246586&cs_id=7246586&expiration=1595896488&hwt=7925e6481b47125b7fe489ba63168957"
    },
    {
        title: "Homecoming: A Mindful Awareness",
        length: 24,
        file: "http://hwcdn.libsyn.com/p/7/6/6/766f473c0fff6225/2010-02-03-Arriving-In-Presence-TaraBrach-hq.mp3?c_id=7246615&cs_id=7246615&expiration=1595897388&hwt=1c42954ad3e977cd3d1a12e5ca7d0b0e"
    },
    {
        title: "In the Body",
        length: 25,
        file: "https://www.tarabrach.com/audio/2011-04-27-Guided-Meditation-In-the-Body-TaraBrach.mp3"
    },
    {
        title: "Radical Acceptance of Pain",
        length: 11,
        file: "http://hwcdn.libsyn.com/p/0/4/e/04ee7a630ae88c40/1-04_Radical_Acceptance_Of_Pain.mp3?c_id=9268065&cs_id=9268065&expiration=1595896416&hwt=a8ff9005ea44ea4b10301d74bea07fd8"
    }
])

x = User.create(username: "Anh", password: "123")
z = User.create(username: "jax", password: "123")


# 10.times do
#     x.posts << Post.create(title: Faker::Lorem.sentence(word_count: 3), content: "#{Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 4)}\n    #{Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 4)}\n    #{Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 4)}")
#     Post.last.tags << Tag.find_or_create_by(name: Faker::Color.color_name)
# end

# 10.times do
#     z.posts << Post.create(title: Faker::Lorem.sentence(word_count: 3), content: "#{Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 4)}\n    #{Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 4)}\n    #{Faker::Lorem.paragraph(sentence_count: 20, supplemental: false, random_sentences_to_add: 4)}")
#     Post.last.tags << Tag.find_or_create_by(name: Faker::Color.color_name)
# end


x.audios << Audio.create(
    title: "Coming Home to Presence",
    length: 13,
    file: "http://hwcdn.libsyn.com/p/c/4/0/c40664f32c9c18fd/2012-12-12-Meditation-Coming-Home-to-Presence-TaraBrach-hq.mp3?c_id=7246586&cs_id=7246586&expiration=1595864492&hwt=09a54acf17c6bb3c15da5681684743d8")

Tag.create(name: "Humour")

puts "Finished Seeding"