<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <!-- MY CSS -->
    <link rel="stylesheet" href="/css/style.css">
    <title><?= $title; ?></title>
</head>

<body>
    <?= $this->include('layout/navbar'); ?>

    <?= $this->renderSection('content'); ?>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script>
        function preview() {
            const sampul = document.querySelector('#sampul');
            const sampullabel = document.querySelector('.custom-file-label');
            const imgPreview = document.querySelector('.img-preview');


            sampullabel.textContent = sampul.files[0].name;

            const fileSampul = new FileReader();
            fileSampul.readAsDataURL(sampul.files[0]);

            fileSampul.onload = function(e) {
                imgPreview.src = e.target.result;
            }
        }
    </script>
</body>

</html>