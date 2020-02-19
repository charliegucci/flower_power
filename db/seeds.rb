# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create!([
{name: "Alstroemerias", url: "Alstroemerias" },
{name: "Calla Lilies", url: "Calla Lilies" },
{name: "Carnations", url: "Carnations" },
{name: "Daisies", url: "Daisies" },
{name: "Gardenias", url: "Gardenias" },
{name: "Gerbera Daisies", url: "Gerbera Daisies" },
{name: "Lilies", url: "Lilies" },
{name: "Orchids", url: "Orchids" },
{name: "Roses", url: "Roses" },
{name: "Sunflowers", url: "Sunflowers" },
{name: "Tulips", url: "Tulips" },
{name: "Peonies", url: "Peonies" },
{name: "Dahlias", url: "Dahlias" },
{name: "Marigold", url: "Marigold" },
])

Type.create!([
{name: "Peruvian Lilies", url: "", parent_id: 1 }
])


Type.create!([
{name: "Calla Lily", url: "", parent_id: 2 }
])

Type.create!([
{name: "Large Flowered Carnations", url: "", parent_id: 3 }, 
{name: "Spray Carnations", url: "", parent_id: 3 },
{name: "Dwarf Flowered Carnations", url: "", parent_id: 3 }
]) 

Type.create!([
{name: "Daisy", url: "", parent_id: 4 }
])

Type.create!([
{name: "Gardenia", url: "", parent_id: 5 }
])

Type.create!([
{name: "Gerbera Daisy", url: "", parent_id: 6 }
])

Type.create!([
{name: "Lilies", url: "", parent_id: 7 }
])

Type.create!([
{name: "Phalaenopsis Orchid", url: "", parent_id: 8 }, 
{name: "Dendrobium Orchid", url: "", parent_id: 8 },
{name: "Cattleya Orchid", url: "", parent_id: 8 },
{name: "Vanilla Orchid", url: "", parent_id: 8 }
])

Type.create!([
{name: "Rose", url: "", parent_id: 9 }
])

Type.create!([
{name: "Sunflower", url: "", parent_id: 10 }
])

Type.create!([
{name: "Tulip", url: "", parent_id: 11 }
])

Type.create!([
{name: "Red Peonies", url: "", parent_id: 12 },
{name: "Coral Peonies", url: "", parent_id: 12 },
{name: "Purple Peonies", url: "", parent_id: 12 },
{name: "Pink Peonies", url: "", parent_id: 12 },
{name: "Yellow Peonies", url: "", parent_id: 12 }
])

Type.create!([
{name: "Dahlia", url: "", parent_id: 13 }
])

Type.create!([
{name: "Marigold", url: "", parent_id: 14 }
])