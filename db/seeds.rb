5.times do
  worker = Worker.create(
    name: Faker::FunnyName.name,
    specialty: Faker::Appliance.equipment,
    rating: Faker::Number.between(from: 1, to: 5)
  )
  3.times do
    service = Service.create(
      job: Faker::Construction.subcontract_category,
      price: Faker::Number.decimal(l_digits: 2),
      available: Faker::Boolean.boolean,
      worker_id: worker.id
    )
    4.times do
      Comment.create(
        title: Faker::Kpop.iii_groups,
        body: Faker::Hipster.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 5),
        rating: Faker::Number.between(from: 1, to: 5),
        service_id: service.id
      )
    end
  end
end
puts "Data seeded"