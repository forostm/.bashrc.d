# Función para crear/entrar nun cartafol rápido para relizar tarefas puntuais

work() {
    FOLDER_NAME="work"
    create_folder
}

temp() {
    FOLDER_NAME="temp"
    create_folder
}

function create_folder() {
    if [ -d "$HOME/$FOLDER_NAME/" ]; then
        cd "$HOME/$FOLDER_NAME/"
        ls
    else
        mkdir "$HOME/$FOLDER_NAME/"
        cd "$HOME/$FOLDER_NAME/"
    fi
}