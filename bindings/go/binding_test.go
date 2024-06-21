package tree_sitter_nvim_test

import (
	"testing"

	tree_sitter "github.com/smacker/go-tree-sitter"
	"github.com/tree-sitter/tree-sitter-nvim"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_nvim.Language())
	if language == nil {
		t.Errorf("Error loading Nvim grammar")
	}
}
