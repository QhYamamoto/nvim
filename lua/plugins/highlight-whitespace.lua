return {
	"lukoshkin/highlight-whitespace",
	config = true,
	opts = {
		palette = {
			other = {
				tws = "PaleVioletRed",
				["\\S\\@<=\\s,\\@="] = "coral1",
				["\\S\\@<=\\(#\\|--\\)\\@<! \\{2,3\\}\\S\\@=\\(#\\|--\\)\\@!"] = "LightGoldenrod3",
				["\\(#\\|--\\)\\@<= \\{2,\\}\\S\\@="] = "#3B3B3B",
				["\\S\\@<= \\{3,\\}\\(#\\|--\\)\\@="] = "#3B3B3B",
			},
		},
	},
}
