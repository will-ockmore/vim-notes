# vim-notes
A simple workflow for managing your daily notes from Vim.

Each day's notes will be available in `$HOME/notes` as a markdown file.

## Configuration

vim-notes provides a single command, `:Notes`, to open the day's notes.

Add a mapping in your configuration:

    nnoremap <leader>ne :Notes<CR>

Set the directory using the `notes_dir` variable:

    let g:notes_dir = $HOME . "/some/other/directory"

Set the date format for the names of the files using the `vim_notes_date_format` variable:

    let g:vim_notes_date_format = "%d-%m-%Y-%A"

The format should be the accepted by the `strftime()` function.
