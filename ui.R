ui <- page_fluid(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel(h1(strong("Virtual Central Dogma"), align = "center")),
      helpText("Software design for user to create a random DNA sequence and transform it into RNA and protein"),
      style = "font-size: 20px; text-align: center; background-color: #8087AA"
    )),
  layout_columns(
    col_widths = 12,
    card_header("DNA sequence generator",
                style = "text-align: center; font-weight: bold; font-size: 18px;")
    ),
  layout_columns(
    col_widths = 12,
    card(
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 3,
                  max = 60,
                  value = 30,
                  step = 3),
      layout_columns(
        col_widths = c(3, 3, 3, 3),
        numericInput(inputId = "prob_A",
                     label = "Probability of A",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_T",
                     label = "Probability of T",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_C",
                     label = "Probability of C",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "prob_G",
                     label = "Probability of G",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1)
      ))),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Generated sequence"),
      mainPanel(
        verbatimTextOutput(outputId = "dna")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual RNA input"),
      textInput(inputId = "dna_i",
                label = "Please paste your DNA sequence")
      )
    ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual RNA output"),
      mainPanel(
        verbatimTextOutput(outputId = "rna")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Protein input"),
      textInput(inputId = "rna_i",
                label = "Please paste your RNA sequence"),
      mainPanel(
        verbatimTextOutput(outputId = "protein")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Protein output"),
      mainPanel(
        verbatimTextOutput(outputId = "protein")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Simple base counts input"),
      mainPanel(
        textInput(inputId = "dna_for_counts",
                  label = "Please paste your DNA sequence")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Simple base counts output"),
      mainPanel(
        plotOutput(outputId = "base_counts")
      )
    ))
)
  
