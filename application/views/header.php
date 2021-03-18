<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Style.css -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>css/style.css">
    <!-- Jquery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <!-- DataTable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-md navbar-light fixed-top navbar-semua">
        <a class="navbar-brand" href="<?php echo base_url(); ?>index.php/main_con/index"><img src="<?php echo base_url(); ?>assets/img/LOGO-01.png" height="60" width="140"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo base_url(); ?>index.php/main_con/index">Home</a>
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo base_url(); ?>index.php/penyakit_con/index">Penyakit</a>
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo base_url(); ?>index.php/obat_con/index">Obat</a>
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo base_url(); ?>index.php/rs_con/index">Rumah Sakit</a>
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo base_url(); ?>index.php/main_con/about">About</a>
                <?php if ($this->session->userdata('username', 'admin')) { ?>
                    <li class="nav-item active">
                        <a class="nav-link" href="<?php echo base_url(); ?>index.php/main_con/logout">Logout</a>
                <?php } else { ?>
                    <li class="nav-item active">
                        <a class="nav-link" href="<?php echo base_url(); ?>index.php/main_con/login">Login</a>
                <?php }; ?>
            </ul>
        </div>
    </nav>