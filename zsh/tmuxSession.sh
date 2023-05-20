# Definir la función que crea la sesión de tmux y abre neovim y lazygit
function tmux_new_session() {
  # Obtener el nombre personalizado de la sesión (si se ha proporcionado)
  local nombre_sesion=$1

  # Si no se ha proporcionado un nombre personalizado, usar uno predeterminado
  if [ -z "$nombre_sesion" ]; then
    nombre_sesion="mi_sesion"
  fi

  # Verificar si la sesión ya existe
  if tmux has-session -t "$nombre_sesion" 2>/dev/null; then
    tmux attach-session -t "$nombre_sesion"
  else

  # Crear una nueva sesión de tmux
  tmux new-session -s "$nombre_sesion" -d

  # Correr Neovim en la primera ventana
  tmux send-keys -t "$nombre_sesion":0.0 "nvim" Enter

  tmux new-window -t "$nombre_sesion" -n MiOtraVentana

  # Crear una nueva ventana llamada Git y correr Lazygit
  tmux new-window -t "$nombre_sesion" -n Git
  tmux send-keys -t "$nombre_sesion":2 "lazygit" Enter

  # Crear un split horizontal en la ventana de Git
  tmux split-window -t "$nombre_sesion":2
  # Obtener el tamaño actual del panel vertical en líneas
  tmux resize-pane -t "$nombre_sesion":2.1 -y 2
  # Seleccione el panel de lazygit
  tmux select-pane -t "$nombre_sesion":2.0

  tmux select-window -t "$nombre_sesion":0

  tmux attach-session -t "$nombre_sesion"

  # Crear una nueva ventana y volver a la primera
  fi
}

