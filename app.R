library(shiny)

# Define UI !!!!
ui <- fluidPage(
 titlePanel(strong("My Shiny App")),
  sidebarLayout(
    sidebarPanel(
	h1(strong("Installation")),
	p("Shiny is available on CRAN, so you can install it the usual way from your R console:"),
	br(),
	img(src = "rstudio.png", height = 140, width = 400),
	br(),
	br(),
	p("Shiny is a product of",
	span("RStudio", style = "color:blue"),
)
),
    mainPanel(
	h1(strong("Introducing Shiny")),
	p("Shiny is a new package from RStudio that makes it", 
      em("incredibly easy"), 
      "to build interactive web applications with R."),
	br(),
	br(),
	p("For an introduction and live examples, visit the",
  	 a("Shiny homepage.", 
          href = "http://darcyholdsworth.com")),
	br(),
	h2(strong("Features")),
	p("- Build useful web applications with only a few lines of code - no JavaScript required."),
	p("- Shiny applications areautomatically 'live' in the same way that",
		strong("spreadsheets"),
	"are live. Outputs change instantly as users modify inputs, without requiring to reload the browser."),
		
	br(),
	br(),
	br(),

	p("p creates a paragraph of text."),
      p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph.", style = "font-family: 'times'; font-si16pt"),
      strong("strong() makes bold text."),
      em("em() creates italicized (i.e, emphasized) text."),
      br(),
      code("code displays your text similar to computer code"),
      div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
      br(),
      p("span does the same thing as div, but it works with",
        span("groups of words", style = "color:blue"),
        "that appear inside a paragraph."),
	a("a creates a hyperlink.", 
          href = "http://darcyholdsworth.com"),
    )
  )
)

# Define server logic !!!!
server <- function(input, output) {
  
}

# Run the app !!!!
shinyApp(ui = ui, server = server)
