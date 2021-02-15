package main

import (
	"fmt"
	"github.com/teris-io/cli"
	"os"
	"strings"
)

func main() {
	bibtex2db := cli.NewCommand("bib2db", "Import .bib file to postgres DB").
		WithOption(cli.NewOption("file", "bibtex Input File").WithChar('f')).
		WithOption(cli.NewOption("table", "Table to import Data").WithChar('t')).
		WithOption(cli.NewOption("append", "Don't create new table, instead append").WithChar('a').WithType(cli.TypeBool)).
		WithAction(func(args []string, options map[string]string) int {
			if options["file"] == "" || !strings.HasSuffix(options["file"], ".bib") {
				fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] No .bib file specified")
				os.Exit(2)
			}
			if options["table"] == "" {
				fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] No table specified")
				os.Exit(2)
			}
			_, append := options["append"]
			parse(options["file"], options["table"], append)
			return 0
		})

	backup := cli.NewCommand("backup", "Dump Database to File").
		WithAction(func(args []string, options map[string]string) int {
			createDump()
			return 0
	})

	export := cli.NewCommand("db2csv", "Export Table to CSV File").
		WithOption(cli.NewOption("table", "Table to export from").WithChar('t')).
		WithAction(func(args []string, options map[string]string) int {
			if options["table"] == "" {
				fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] No table specified")
				os.Exit(2)
			}
			export(options["table"])
			return 0
	})

	selection := cli.NewCommand("selection", "Studiselection for table").
		WithOption(cli.NewOption("table", "Table to process").WithChar('t')).
		WithAction(func(args []string, options map[string]string) int {
			if options["table"] == "" {
				fmt.Printf("\033[1;31m%s\033[0m\n", "[Error] No table specified")
				os.Exit(2)
			}
			selectPapers(options["table"])
			return 0
	})
	app := cli.New("BA Helper").
		WithCommand(bibtex2db).
		WithCommand(backup).
		WithCommand(export).
		WithCommand(selection)
	os.Exit(app.Run(os.Args, os.Stdout))
}