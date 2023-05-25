<?php include 'core/header.php'; ?>
<body>
    <?php
 // $conexao = mysqli_connect("localhost", "usuario", "senha", "database");
    $conexao = mysqli_connect("localhost", "root", "", "test");
    if (mysqli_connect_errno()) {
        echo "Falha na conexão com o MySQL: " . mysqli_connect_error();
    }
    
    $consulta = "SELECT * FROM tabela_test";
    $resultado = mysqli_query($conexao, $consulta);
    ?>
    <div class="movie-next">
        <h1>Últimos filmes adicionados</h1>
    </div>
    <div class="movie-list">
        <?php while ($filme = mysqli_fetch_assoc($resultado)) { ?>
            <div class="movie-card" onclick="openSinapse(<?php echo $filme['id']; ?>)">
                <img class="movie-image" src="<?php echo $filme['images']; ?>" alt="<?php echo $filme['titulo']; ?>">
                <h3>★ ★ ★ ★ ★</h3>
                <h3 class="movie-title"><?php echo $filme['titulo']; ?></h3>
                <!--p>< ?php echo $filme['sinopse']; ? ></p-->
            </div>
        <?php } ?>
    </div>

    <?php
    mysqli_close($conexao);
    ?>
    <script>
        function openSinapse(id) {
            var url = "pages/detalhes_filme.php?id=" + id;
            window.open(url, "_blank");
        }
    </script>
</body>
</html>
