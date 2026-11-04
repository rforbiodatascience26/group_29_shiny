ui <- page_fluid(
  setBackgroundColor(
    color = c("#C9A0DC", "#E6E6FA"),
    gradient = "linear",
    direction = "bottom"
  ),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #9D81BA; padding: 15px;"
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Welcome to Virtual Central Dogma!"),
      helpText("Make your own gene and turn it into RNA and Protein!")
    )),
  layout_columns(
    col_widths = 10,
    card(
      card_header("Virtual Gene Generator"),
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
      card_header("Virtual Gene output"),
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
      card_header("Virtual aminoacid sequence input"),
      mainPanel(
        textInput(inputId = "aa_for_counts",
                  label = "Please paste your aminoacid sequence")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual aminoacid counts output"),
      mainPanel(
        width = 12,
        div(plotOutput(outputId = "base_counts"), align = "center")
      )
    ))
)
