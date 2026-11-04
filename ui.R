library(shiny)
library(bslib)

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
      h3("Welcome to Virtual Central Dogma!"),
      helpText("Make your own gene and turn it into RNA and Protein!")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene Generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 3, max = 60, value = 30, step = 3),
      layout_columns(
        col_widths = c(3, 3, 3, 3),
        numericInput("prob_A", "Probability of A", value = 0.25, min = 0, max = 1, step = 0.1),
        numericInput("prob_T", "Probability of T", value = 0.25, min = 0, max = 1, step = 0.1),
        numericInput("prob_C", "Probability of C", value = 0.25, min = 0, max = 1, step = 0.1),
        numericInput("prob_G", "Probability of G", value = 0.25, min = 0, max = 1, step = 0.1)
      )
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene output"),
      verbatimTextOutput("dna")
    )
  ),
  
  layout_columns(
    col_widths = 12,
      card_header("Enter a RNA sequence"),
      style = "text-align: center;  font-size: 18px; font-weight: bold"
      
    )
  ,
    layout_columns(
    col_widths = 12,
    card(
      textInput("dna_i", "Please paste your DNA sequence")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual RNA output"),
      verbatimTextOutput("rna")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card_header("Enter a protein sequence"),
    style = "text-align: center;  font-size: 18px; font-weight: bold"),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Protein output"),
      verbatimTextOutput("protein")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Simple base counts input"),
      textInput("dna_for_counts", "Please paste your DNA sequence")
    )
  ),
  
  layout_columns(
    col_widths = 12,
    card_header("Simple base counts"),
    style = "text-align: center;  font-size: 18px; font-weight: bold"),
  
  layout_columns(
    col_widths = 12,
    card(
      card_header("Simple base counts output"),
      plotOutput("base_counts")
    )
  )
)
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
