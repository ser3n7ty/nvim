return {
  "lervag/vimtex",
  dependencies = {
    "honza/vim-snippets",
    --"SirVer/ultisnips",
    --"sillybun/zyt-snippet",
  },

  ft = { "tex" },

  keys = {
    { "<leader>lL", "<cmd>latexmk -xelatex %<CR>", desc = "Latex Compile(tex,bib)" },
    { "<leader>ll", "<cmd>VimtexCompile<CR>",      desc = "Latex Compile(tex,bib)" },
    { "<leader>lv", "<cmd>VimtexView<CR>",         desc = "PDF View" },
    { "<leader>lc", "<cmd>VimtexClean<CR>",        desc = " Clean auxiliary files" },
    { "<leader>lC", "<cmd>VimtexClean!<CR>",       desc = " Clean all auxiliary files" },
    { "<leader>lt", "<cmd>VimtexTocOpen<CR>",      desc = "Vimtex Toc Open" },
    { "<leader>le", "<cmd>VimtexErrors<CR>",       desc = "Show Errors" },
    { "<leader>lw", "<cmd>VimtexCountWords<CR>",   desc = "Counter Words" },
  },

  config = function()
    local g = vim.g

    --"""""""""""""""""""""""""""""vimtex"""""""""""""""""""""""""""""""""""""""""
    g.tex_flavor = "latex"
    --g.vimtex_compiler_program = "nvr"
    g.Tex_DefaultTargetFormat = "pdf"
    g.Tex_FormatDependency_pdf = "bbl,pdf"
    g.Tex_CompileRule_bbl =
    "xelatex -src-specials -file-line-error -synctex=-1 -interaction=nonstopmode $* && bibtex $*.aux"
    g.Tex_CompileRule_pdf =
    "xelatex -src-specials -file-line-error -synctex=-1 -interaction=nonstopmode $* && xelatex -src-specials -file-line-error -synctex=-1 -interaction=nonstopmode $*"
    g.vimtex_view_method = 'zathura'

    -- for vim/gvim--编译过程中忽略警告信息
    g.vimtex_quickfix_open_on_warning = 0
    g.vimtex_quickfix_mode = 0
    g.vimtex_quickfix_ignore_filters = {
      "LaTex Warning: Unused global option(s):",
      "Package fancyhdr Warning",
      "I found no \\citation commands",
      "Underfull \\hbox",
      "Overfull \\hbox",
      [[LaTeX Warning: .\+ float specifier changed to]],
      "LaTeX hooks Warning",
      'Package siunitx Warning: Detected the "physics" package:',
      "Package hyperref Warning: Token not allowed in a PDF string",
    }

    --这里是LaTeX编译引擎的设置，这里默认LaTeX编译方式为-pdf(pdfLaTeX),
    --vimtex提供了magic comments来为文件设置编译方式
    --例如，我在tex文件开头输入 % !TEX program = xelatex   即指定-xelatex （xelatex）编译文件
    g.vimtex_compiler_latexmk_engines = {
      _ = "-xelatex",
      pdflatex = "-pdf",
      dvipdfex = "-pdfdvi",
      lualatex = "-lualatex",
      xelatex = "-xelatex",
      ["context (pdftex)"] = "-pdf -pdflatex=texexec",
      ["context (luatex)"] = "-pdf -pdflatex=context",
      ["context (xetex)"] = "-pdf -pdflatex='texexec --xtx'",
    }
    --这里是设置latexmk工具的可选参数
    g.vimtex_compiler_latexmk = {
      build_dir = "",
      -- callback   = 1,
      continuous = 1,
      executable = "latexmk",
      hooks = {},
      options = {
        "-silent",
        "-verbose",
        "-file-line-error",
        "-shell-escape",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }

    g.vimtex_compiler_tectonic = {
      out_dir = "",
      options = {
        "--synctex",
      },
    }

    --目录
    g.vimtex_toc_config = {
      name = "Table Of Contens",
      mode = 1,
      layers = { "content", "todo", "include" },
      split_width = 30,
      todo_sorted = 0,
      show_help = 0,
      show_numbers = 1,
    }

    -- vim.o.conceallevel = 1
    -- g.tex_conceal = "abdmg" --设置conseal
    --g.vimtex_syntax_enable=0
    g.vimtex_syntax_conceal_disable = 1
    g.UltiSnipsExpandTrigger = "<C-b>"
    --使用 tab 切换下一个触发点，shit+tab 上一个触发点
    g.UltiSnipsJumpForwardTrigger = "<tab>"
    g.UltiSnipsJumpBackwardTrigger = "<S-tab>"
    g.UltiSnipsSnippetDirectories = { "UltiSnips", "mysnippet" }
  end,
}
