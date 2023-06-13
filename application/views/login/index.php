<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9 ">

            <div class="card o-hidden border-0 shadow-lg my-5  " id="card">
                <div class="card-body brul p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block">
                            <img width="100%" height="100%" src="<?= base_url() ?>assets/icon/bg-login.png" alt="background">
                        </div>

                        <div class="col-lg-6">
                            <div class="p-5">
                                <br>
                                <br>
                                <br>
                                <div class="text-center">
                                    <h4 class="font-weight-bold" style="color: #2E5B8E;">Login Page</h4>
                                </div>
                                <br>
                                <br>
                                <form action="<?= base_url();?>''" method="POST">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user shadow-sm" id="user" name="user" aria-describedby="usernameHelp" placeholder="Username" autocomplete="off" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user shadow-sm" id="pwd" name="pwd" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <br>
                                    </div>
                                    <button href="#" onclick="proses_login()" id="login" class="btn-user button-name">
                                        <h6 class="font-weight-bold">Login</h6>
                                    </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>


<script src="<?= base_url(); ?>assets/js/jquery.min.js"></script>
<script src="<?= base_url(); ?>assets/js/login.js"></script>
<?php if ($this->session->flashdata('Pesan')) : ?>
    <?= $this->session->flashdata('Pesan'); ?>
<?php else : ?>
    <script>
        $(document).ready(function() {

            let timerInterval
            Swal.fire({
                title: 'Memuat...',
                timer: 1000,
                onBeforeOpen: () => {
                    Swal.showLoading()
                },
                onClose: () => {
                    clearInterval(timerInterval)
                }
            }).then((result) => {
                $("#card").addClass("bounceIn");
            })
        });
    </script>
<?php endif; ?>