# vim-notes
A simple workflow for managing your daily notes from Vim.

Each day's notes will be available in `$HOME/.notes` as a markdown file.

## Configuration

vim-notes provides a single command, to open the day's notes.

    nnoremap <leader>ne :Notes<CR>

Set the directory using the `notes_dir` variable:

        let g:notes_dir = $HOME . "/some/other/directory"

