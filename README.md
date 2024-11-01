The plugins will automatically install on the first startup.

### Usage

This configuration provides several features:

• File Navigation: Use <leader>n (default: \n) to open the NERDTree file explorer.
• Floating Terminal: Use <leader>t (default: \t) to open a floating terminal.
• Key Bindings: Explore the configuration file for various key bindings and customize them to your liking.

### Customization

• Font:  Adjust the font setting in the configuration file (~/.config/nvim/init.vim) to your preference.
• Color Scheme: Change the colorscheme setting in the configuration file to explore other available color schemes.
• Plugin Settings:  Customize various plugin settings within the configuration file. 

### Troubleshooting

• Permissions: If you encounter permission errors, ensure the Neovim configuration directory is owned by you and has appropriate permissions.
• Dependencies: Double-check that all dependencies are installed correctly.
• Plugin Conflicts: If you experience unexpected behavior, try disabling plugins one by one to identify potential conflicts.

### Contributing

Feel free to contribute to this repository by suggesting new features, fixing bugs, or improving the documentation. 

This README file provides a comprehensive guide to setting up and using the provided Neovim configuration. Be sure to adapt the commands and instructions to your specific platform and needs. Happy coding!
```bash
nvim

```
Note: Ensure you have Python installed if you're on Windows.

#### 4. Start Neovim

Run the following command to start Neovim:
  choco install vim-plug fzf cmake clang-format clang
* **Windows (Chocolatey):**
  brew install vim-plug fzf cmake clang-format clang
* **macOS (Homebrew):**
  sudo pacman -S vim-plug fzf cmake clang-format clang
* Linux (Arch Linux/Manjaro):
  sudo apt install vim-plug fzf cmake clang-format libclang-dev libclang1-dev
Replace your-username and your-repo-name with your actual GitHub username and repository name.

#### 3. Install dependencies

Platform-Specific Instructions:

• Linux (Debian/Ubuntu):
```bash
git clone https://github.com/leerov/NvimConfig.git ~/.config/nvim
```
#### 2. Clone this repository
  choco install neovim
* **Windows (Chocolatey)**:
This is a great start to customizing your Vim environment! Let's break down what each line does and consider some additional improvements.

Keybindings Breakdown:

• :NERDTreeToggle<CR>: Toggles the NERDTree file explorer. NERDTreeToggle is the command to open/close the explorer, and <CR> is the Enter key, executing the command.
• nnoremap <S-F> :NERDTreeFind<CR>:  Opens NERDTree's Find feature. nnoremap defines a normal mode mapping, S-F is Shift + F, and :NERDTreeFind<CR> executes the NERDTree search command.
• nnoremap <S-B> :!bash build.sh<CR>: Runs your build.sh script. :!! executes a shell command.
• nnoremap <S-T> :FloatermToggle<CR>: Toggles the Floaterm terminal.
• nnoremap <S-o> :FZF<CR>:  Opens FZF (a fuzzy finder).
• nnoremap <S-,> :e ~/.config/nvim/init.vim<CR>: Opens your init.vim configuration file.
• vmap <C-c> "+y<Esc>i:  Copies selected text to the unnamed register (system clipboard). vmap defines a visual mode mapping.
• vmap <C-x> "+d<Esc>i: Deletes selected text and places it into the unnamed register.
• imap <C-v> "+pi:  Pastes the contents of the unnamed register (system clipboard) in insert mode.
• imap <C-v> <Esc>"+pi:  Same as above, with a Esc escape to exit insert mode.
• inoremap <C-a> <Esc>ggVG:  Selects all text in insert mode.  inoremap defines insert mode mapping.
• noremap <Leader>y "+y:  Copies the current line to the system clipboard. noremap defines a normal mode mapping.  Leader is usually set to , in Vim.
• noremap <Leader>p "+p:  Pastes from the system clipboard.
• noremap <Leader>Y "*y:  Copies the selected text to the system clipboard.
• noremap <Leader>P "*p:  Pastes from the system clipboard.
• nnoremap <C-L> :vsplit<CR>: Creates a vertical split.
• nnoremap <C-K> :split<CR>: Creates a horizontal split. 

Additional Considerations:

• devicons: This plugin should be installed and configured properly in your init.vim for it to work.
• FZF: Make sure FZF is installed and configured.
• Floaterm:  Make sure Floaterm is installed and configured.

Further Improvements:

• leader Key:  You can change the leader key to something more comfortable (e.g., \, space, or another key).
• More mappings:  Consider adding mappings for other commands like :wq (save and quit), :q! (quit without saving), :w (save), :e (edit a file), :s (search and replace), and so on.
• Customizations:  Explore additional features like plugins, color schemes, and settings to tailor your Vim environment further.

Example init.vim Setup:" ... your other settings ...

" NERDTree
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeShowHidden = 1

" Floaterm
let g:floaterm_width = 0.8
let g:floaterm_height = 0.6

" FZF
" ... your FZF setup ...

" Leader key
let mapleader = ","

" Mappings
nnoremap <S-F> :NERDTreeFind<CR>
nnoremap <S-B> :!bash build.sh<CR>
nnoremap <S-T> :FloatermToggle<CR>
nnoremap <S-o> :FZF<CR>
nnoremap <S-,> :e ~/.config/nvim/init.vim<CR>
" ... more mappings ...

" Clipboard
vmap <C-c> "+y<Esc>i 
vmap <C-x> "+d<Esc>i 
imap <C-v> "+pi 
imap <C-v> <Esc>"+pi 
inoremap <C-a> <Esc>ggVG 

" Leader key
noremap <Leader>y "+y 
noremap <Leader>p "+p 
noremap <Leader>Y "*y 
noremap <Leader>P "*p

" Splits
nnoremap <C-L> :vsplit<CR> 
nnoremap <C-K> :split<CR>

" devicons
" ... your devicons setup ...

Remember to save your init.vim after making changes. You can then restart Vim for the new mappings to take effect. Enjoy your customized Vim experience!
  brew install neovim
* **macOS (Homebrew)**:
  sudo pacman -S neovim
* Linux (Arch Linux/Manjaro):
  sudo apt update && sudo apt install neovim
Platform-Specific Instructions

• Linux (Debian/Ubuntu):
sudo apt install neovim # Debian/Ubuntu
sudo pacman -S neovim  # Arch Linux/Manjaro
## README.md

This README provides instructions on setting up your Neovim configuration and includes platform-specific commands for installing dependencies.

### Configuration Overview

This configuration provides a comprehensive setup for Neovim with popular plugins and customizations:

• Automatic Plugin Installation: Plugins are automatically installed on the first Vim start, making it easy to manage dependencies.
• Code Folding: Allows for collapsing code blocks for better readability.
• Workspaces: Easily create and manage workspaces for multiple projects.
• Popular Plugins: Includes plugins for:
  * File Navigation (NERDTree)
  * Status Line (Airline)
  * Syntax Highlighting (Material)
  * Auto-pairs (Auto-Pairs)
  * Auto-save (Auto-save)
  * Floating Terminal (Floaterm)
  * Fuzzy Search (FZF)
  * Multiple Cursors (vim-multiple-cursors)
  * File Icons (vim-devicons)
  * C/C++ Completion (clang_complete)
  * Vim Start Page (vim-startify)
  * Workspace Management (vim-workspace)
  * Any Folding (vim-anyfold)
  * Key Bindings (which-key.nvim)
  * Snippets (ultisnips)
  * Clang Format (vim-clang-format)
• Customization: Includes color schemes, font settings, key bindings, and plugin settings for a more personalized editing experience.

### Installation

#### 1. Install Neovim

General Instructions

Neovim can be installed using your system package manager. For example, on most Linux systems, you would use:
