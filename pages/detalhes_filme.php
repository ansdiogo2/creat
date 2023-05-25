<?php
$conexao = mysqli_connect("localhost", "root", "", "test");
if (mysqli_connect_errno()) {
    echo "Falha na conexão com o MySQL: " . mysqli_connect_error();
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $consulta = "SELECT * FROM tabela_test WHERE id = $id";
    $resultado = mysqli_query($conexao, $consulta);

    if ($filme = mysqli_fetch_assoc($resultado)) {
        $titulo = $filme['titulo'];
        $sinopse = $filme['sinopse'];
        $imagemID = $filme['images'];

        $urlImagemDestaque = buscarImagemDestaque($titulo);

        echo "<h1>$titulo</h1>";
        echo "<img src='$imagemID' alt='$titulo' width='200'>";
        echo "<p>$sinopse</p>";
        //echo "<img src='$urlImagemDestaque' alt='Imagem em Destaque' width='400'>";
        echo "<div>";
        echo "<a href='https://www.youtube.com/results?search_query=" . urlencode($titulo) . " trailer' target='_blank' class='play-button'>Play</a>";
        echo "<a href='#' class='info-button'>Mais Informações</a>";
        echo "</div>";
    } else {
        echo "Filme não encontrado.";
    }
} else {
    echo "ID do filme não fornecido.";
}

function buscarImagemDestaque($titulo)
{
    $urlImagemDestaque = "https://example.com/imagem_destaque.jpg";

    return $urlImagemDestaque;
}

mysqli_close($conexao);
?>
<style> 
.play-button {
    background-color: #FF4500;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
}

.play-button:hover {
    background-color: #FF6347;
}

.info-button {
    background-color: #4682B4;
    color: white;
    padding: 10px 20px;
   

</style>
<?php include '../core/footer.php'; ?>