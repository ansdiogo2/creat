<!DOCTYPE html>
<html>
<head>
    <title>Adicionar Filme</title>
</head>
<body>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $titulo = $_POST["titulo"];
        $sinopse = $_POST["sinopse"];
        $imagem = $_FILES["imagem"]["name"];

        move_uploaded_file($_FILES["imagem"]["tmp_name"], "caminho/do/diretorio/" . $imagem);

        $conexao = mysqli_connect("localhost", "usuario", "senha", "database");
        if (mysqli_connect_errno()) {
            echo "Falha na conexão com o MySQL: " . mysqli_connect_error();
        }

        $sql = "INSERT INTO filmes (titulo, sinopse, imagem) VALUES ('$titulo', '$sinopse', '$imagem')";
        if (mysqli_query($conexao, $sql)) {
            echo "Filme adicionado com sucesso!";
        } else {
            echo "Erro ao adicionar filme: " . mysqli_error($conexao);
        }

        mysqli_close($conexao);
    }
    ?>

    <h1>Adicionar Filme</h1>
    <form method="POST" enctype="multipart/form-data">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required><br><br>

        <label for="sinopse">Sinopse:</label>
        <textarea id="sinopse" name="sinopse" required></textarea><br><br>

        <label for="imagem">Imagem:</label>
        <input type="file" id="imagem" name="imagem" required><br><br>

        <input type="submit" value="Adicionar Filme">
    </form>
</body>
</html>
