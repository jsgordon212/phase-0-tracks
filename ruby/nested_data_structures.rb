#nested_data_structures.rb

football_stadium = {

	field_level: {

		food: ["wine", "filet mignon", "crab legs", "lobster tails"],
		rows: 25,
		price: {

			row_1_to_10: "$10,000",
			row_11_to_25: "$5,000"
		}
	},

	mezzanine: {

		food: ["beer", "hotdogs", "cotton candy", "popcorn"],
		rows: 75,
		price: {

			row_1_to_25: "$3,000",
			row_26_to_50: "$2,000",
			row_51_to_75: "$1,000"
		}
	},

	upper_deck: {


		food: ["peanuts", "turnips", "beets", "raw carrot sticks"],
		rows: 75,
		price: {

			row_1_to_25: "$500",
			row_26_to_50: "$400",
			row_51_to_75: "$300"
		}
	}
}


puts football_stadium[:upper_deck][:food][2]
puts football_stadium[:field_level][:price][:row_11_to_25]