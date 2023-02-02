<?php $this->load->view('admin/layout/header')?>
<?php $this->load->view('admin/layout/topbar')?>
<?php $this->load->view('admin/layout/sidebar')?>


<div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">User List</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Contacts</a></li>
                                            <li class="breadcrumb-item active">User List</li> -->
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <!-- <h5 class="card-title">Contact List <span class="text-muted fw-normal ms-2">(834)</span></h5> -->
                                                </div>
                                            </div><!-- end col -->
                
                                            <div class="col-md-6">
                                                <div class="d-flex flex-wrap align-items-start justify-content-md-end mt-2 mt-md-0 gap-2 mb-3">
                                                    <div>
                                                        <ul class="nav nav-pills">
                                                            <li class="nav-item">
                                                                <a class="nav-link active" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="List"><i class="uil uil-list-ul"></i></a>
                                                            </li>
                                                            <!-- <li class="nav-item">
                                                                <a class="nav-link" href="contacts-grid.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Grid"><i class="uil uil-apps"></i></a>
                                                            </li> -->
                                                        </ul>
                                                    </div>
                                                    <div>
                                                        <a href="#" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#addContactModal"><i class="uil uil-plus me-1"></i> Add New</a>
                                                    </div>                                                    
                                                   
                                                </div>
                                            </div><!-- end col -->
                                        </div><!-- end row -->
                                        <?php if($this->session->flashdata('success')) { ?>
                                            <div class="alert alert-success">
                                                <?php echo $this->session->flashdata('success')?>
                                                </div>
                                        <?php } ?>

                                        <?php if($this->session->flashdata('error')) { ?>
                                            <div class="alert alert-danger">
                                                <?php echo $this->session->flashdata('error')?>
                                            </div>
                                        <?php } ?>

                                        <?php if($this->session->flashdata('status')) { ?>
                                            <div class="alert alert-info">
                                                <?php echo $this->session->flashdata('status')?>
                                            </div>
                                        <?php } ?>
                                        <!-- Add Modal -->
                                        <div class="modal fade" id="addContactModal" tabindex="-1" aria-labelledby="addContactModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="addContactModalLabel">Add User</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body p-4">
                                                        <form action="<?php echo base_url("admin/add_users/")?>" method="post">
                                                        <div>
                                                            <div class="mb-3">
                                                                <label for="addcontact-name-input" class="form-label">Name</label>
                                                                <input type="text" name="name" class="form-control" id="addcontact-name-input" placeholder="Enter Name">
                                                                <?php echo form_error('name')?>
                                                            </div>
                                                          
                                                            <div class="mb-3">
                                                                <label for="addcontact-email-input" class="form-label">Email</label>
                                                                <input type="email" name="email" class="form-control" id="addcontact-email-input" placeholder="Enter Email">
                                                                <?php echo form_error('email')?>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="addcontact-email-input" class="form-label">Password</label>
                                                                <input type="password" name="password" class="form-control" id="addcontact-email-input" placeholder="Enter Password">
                                                                <?php echo form_error('password')?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-light w-sm" data-bs-dismiss="modal">Close</button>
                                                        <button type="submit" class="btn btn-primary w-sm">Add</button>
                                                    </div>
                                                </div>
                                              </form>
                                            </div>
                                        </div>
                                        <!-- end add modal -->

                                        

                                        <div class="table-responsive">
                                            <table class="table align-middle table-nowrap table-check">
                                                <thead>
                                                    <tr>
                                                        <th scope="col" style="width: 50px;">                                                         
                                                        </th>
                                                        <th scope="col"><h5>Name</h5></th>
                                                        <th scope="col"><h5>Email</h5></th>
                                                        <th scope="col"><h5>Action</h5></th>
                                                    </tr><!-- end tr -->
                                                </thead><!-- end thead -->
                                                <tbody>
                                                <?php foreach($users as $user) {?>
                                                    <tr>
                                                        
                                                        <th scope="row">
                                                            <div class="form-check font-size-16">
                                                                <input type="checkbox" class="form-check-input" id="contacusercheck1">
                                                                <label class="form-check-label" for="contacusercheck1"></label>
                                                            </div>
                                                        </th>
                                                        <td>
                                                            <a href="pages-profile.html" class="text-body fw-medium"><?php echo $user->name ?></a>
                                                        </td>
                                                        <!-- <td>UI/UX Designer</td> -->
                                                        <td><?php echo $user->email ?></td>
                                                       
                                                        <td>
                                                            <div class="dropdown">
                                                                <button class="btn btn-light btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                                    <i class="uil uil-ellipsis-h"></i>
                                                                </button>
                                                                <ul class="dropdown-menu dropdown-menu-end">
                                                                    <!-- <li><a class="dropdown-item" href="#"><button class="btn btn-primary">Add</button></a></li> -->
                                                                    <li><a class="dropdown-item" href="<?php echo base_url("admin/update_user/").$user->id?>">UPDATE</a></li>
                                                                    <li><a class="dropdown-item" href="<?php echo base_url("admin/delete_user/").$user->id?>">DELETE</a></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        
                                                    </tr><!-- end tr -->
                                                    <?php } ?>
                                                   
                                                </tbody><!-- end tbody -->
                                            </table><!-- end table -->
                                        </div><!-- end table responsive -->

                                        <div class="row g-0 text-center text-sm-start">
                                            <div class="col-sm-6">
                                                <!-- <div>
                                                    <p class="mb-sm-0">Showing 1 to 10 of 57 entries</p>
                                                </div> -->
                                            </div>
                                            <!-- end col -->
                                            <div class="col-sm-6">
                                           

                                                <ul class="pagination pagination-rounded justify-content-center justify-content-sm-end mb-sm-0">
                                                    <!-- <li class="page-item disabled">
                                                        <a href="#" class="page-link"><i class="mdi mdi-chevron-left"></i></a>
                                                    </li> -->
                                                    <?php echo $this->pagination->create_links();?>                                                                                         
                                                </ul>
                                            </div><!-- end col -->
                                        </div><!-- end row -->
                                        
                                    </div><!-- end card body -->
                                </div><!-- end card -->
                            </div><!-- end col -->
                        </div><!-- end row -->
                        
                    </div> <!-- container-fluid -->
                </div>


<?php $this->load->view('admin/layout/footer')?>