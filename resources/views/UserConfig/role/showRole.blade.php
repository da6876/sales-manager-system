@extends('layout.appmain')
@section('title', '- Role')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Role</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">User Config</li>
                    <li class="breadcrumb-item active">Role</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10">
                                <h5 class="card-title">Role</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('Roles.create')}}" type="button" class="btn btn-outline-success btn-sm text-right"> Add New <i class="bi bi-plus"></i></a>
                            </div>
                        </div>
                        <form action="#" id="fromData" style="display: none">@csrf</form>
                        <table class="table table-hover table-responsive table-sm" id="dataTableItem">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Guard Name</th>
                                <th>Create At</th>
                                <th>Update At</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                        </table>
                        <!-- End Table with hoverable rows -->

                    </div>
                </div>
            </div>
        </section>

        <div class="modal fade" id="addRolePermissionModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-simple modal-dialog-centered modal-add-new-role">
                <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                        <div class="text-center mb-4">
                            <h3 class="role-title">Add Role To Permission</h3>
                        </div>
                        <!-- Add role form -->
                        <form id="addRoleForm" class="row g-3" onsubmit="return false">@csrf
                            <div class="col-12 mb-4">
                                <label class="form-label" for="modalRoleName">Role Name</label>
                                <input type="hidden" id="addId" name="id">
                                <input type="text" id="addName" name="name" class="form-control"
                                       placeholder="Enter a role name" tabindex="-1" readonly/>
                            </div>
                            <div class="col-12 RolePermissions">
                                <h4>Role Permissions</h4>
                                <div class="row" id="permissions-list">
                                </div>
                            </div>
                            <div class="col-12 text-center">
                                <button type="button" class="btn btn-primary me-sm-3 me-1" onclick="givePermissionToRole()">Submit</button>
                                <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="modal" aria-label="Close">Cancel</button>
                            </div>
                        </form>
                        <!--/ Add role form -->
                    </div>
                </div>
            </div>
        </div>

        <div id="addRoleMenuModal" class="modal fade"  tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-simple modal-dialog-centered modal-add-new-role">
                <div class="modal-content p-3 p-md-5">
                    <form>
                        <div class="modal-header">
                            <h5 class="modal-title">Add Menu Permission to Role</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" id="addIdmenu" name="role_id">
                            <div class="mb-3">
                                <label for="addName" class="form-label">Role Name</label>
                                <input type="text" class="form-control" id="addNames" readonly>
                            </div>
                            <div class="col-12">
                                <h5>Menu Permissions</h5>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="selectAll">
                                    <label class="form-check-label" for="selectAll">Select All</label>
                                </div>
                                <div class="row" id="menus-list">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script>
        var TableData;
        var url = "{{ route('all.Roles') }}";

        function LoadDataTable() {
            TableData = $('#dataTableItem').DataTable({
                processing: true,
                serverSide: true,
                responsive: true,
                ajax: {
                    url: url,
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: function(d) {
                        d.form_data = $("#fromData").serialize(); // Send form data as POST data
                    }
                },
                columns: [
                    { data: 'id' },
                    { data: 'name' },
                    { data: 'guard_name' },
                    { data: 'created_at' },
                    { data: 'updated_at' },
                    {
                        data: null,
                        orderable: false,
                        defaultContent: "NO Data",
                        render: function(data, type, row) {
                            return `
                            <button type="button" class="btn btn-outline-info btn-sm menu-button" data-id="${row.id}" data-name="${row.name}" title="Menu Permission"><i class="bi bi-menu-button-wide-fill"></i></button>
                            <button type="button" class="btn btn-outline-info btn-sm permission-button" data-id="${row.id}" title="Add Permission"><i class="bi bi-person-plus-fill"></i></button>
                            <button type="button" class="btn btn-outline-info btn-sm edit-button" data-id="${row.id}"><i class="bi bi-pencil-fill"></i></button>
                            <button type="button" class="btn btn-outline-danger btn-sm delete-button" data-id="${row.id}"><i class="bi bi-x-circle-fill"></i></button>`;
                        }
                    }
                ],
                // Expandable rows
                rowCallback: function(row, data) {
                    if (data.parent_id) {
                        $(row).addClass('child-row');
                    }
                }
            });

            // Event delegation to handle click events
            $('#dataTableItem').on('click', '.edit-button', function() {
                var id = $(this).data('id');
                showData(id);
            });

            $('#dataTableItem').on('click', '.delete-button', function() {
                var id = $(this).data('id');
                deleteData(id);
            });

            $('#dataTableItem').on('click', '.permission-button', function() {
                var id = $(this).data('id');
                addPermissionToRole(id);
            });

            $('#dataTableItem').on('click', '.menu-button', function() {
                var id = $(this).data('id');
                var name = $(this).data('name');
                addMenuToRole(id,name);
            });
        }

        $(document).ready(function() {
            LoadDataTable();
        });

        function showData(id) {
            var url = "{{ route('Roles.edit', ':id') }}"; // Use named route with placeholder
            var fullUrl = url.replace(':id', id); // Replace placeholder with actual ID
            window.location.href = fullUrl; // Redirect to the constructed URL
        }

        function addPermissionToRole(id){
            $.ajax({
                url: "{{ url('addpermission') }}" + '/' + id,
                type: "GET",
                dataType: "JSON",
                success: function (data) {
                    console.log(data);
                    $('#addRolePermissionModal form')[0].reset();
                    $('#addRolePermissionModal').modal('show');
                    $('#addId').val(data.role.id);
                    $('#addName').val(data.role.name);

                    // Convert roleHavePermission to an array of permission IDs
                    var roleHavePermissionIds = Object.keys(data.roleHavePermission);

                    var permissionsHtml = '';
                    $.each(data.permissions, function(index, permission) {
                        var isChecked = roleHavePermissionIds.includes(permission.id.toString()) ? 'checked' : ''; // Check if the permission ID is in the role's permissions
                        permissionsHtml += '<div class="form-check col-md-3">';
                        permissionsHtml += '<input class="form-check-input" type="checkbox" name="permission[]" value="' + permission.name + '" ' + isChecked + '>';
                        permissionsHtml += '<label class="form-check-label" for="selectAll"> ' + permission.name + '</label>';
                        permissionsHtml += '</div>';
                    });
                    $('#permissions-list').html(permissionsHtml);
                }, error: function (xhr, status, error) {
                    var errorMessage = "Error occurred";
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        errorMessage = xhr.responseJSON.message;
                    } else if (xhr.responseText) {
                        errorMessage = xhr.responseText;
                    }
                    swal({
                        title: "Oops",
                        text: errorMessage,
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
        }

        function addMenuToRole(roleId, name) {
            $.ajax({
                url: 'addMenuPermision/' + roleId, // Adjust endpoint
                method: 'GET',
                success: function(data) {
                    console.log(data);
                    $('#addRoleMenuModal form')[0].reset();
                    $('#addRoleMenuModal').modal('show');
                    $('#menus-list').empty();
                    $('#addIdmenu').val(roleId);
                    $('#addNames').val(name);

                    // Populate the menu list in a hierarchical structure
                    $.each(data.menus, function(index, menu) {
                        const parentItem = `
                            <div class="form-check col-md-12 border-5">
                                <input class="form-check-input" type="checkbox" name="permission[]" value="${menu.id}" ${menu.role_id ? 'checked' : ''}>
                                <label class="form-check-label">${menu.name}</label>
                            </div>
                        `;
                        $('#menus-list').append(parentItem);

                        if (menu.children && menu.children.length > 0) {
                            const childrenContainer = $('<div class="children row"></div>');
                            $.each(menu.children, function(childIndex, child) {
                                const childItem = `
                                    <div class="form-check col-md-4">
                                        <input class="form-check-input" type="checkbox" name="permission[]" value="${child.id}" ${child.role_id ? 'checked' : ''}>
                                        <label class="form-check-label">${child.name}</label>
                                    </div>
                                `;
                                childrenContainer.append(childItem);
                            });
                            $('#menus-list').append(childrenContainer);
                        }
                    });

                    // Select All functionality
                    $('#selectAll').prop('checked', false);

                    $('#selectAll').on('change', function() {
                        const isChecked = $(this).is(':checked');
                        $('#menus-list input[type="checkbox"]').prop('checked', isChecked);
                    });
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error: " + status + error);
                }
            });
        }

        $('#addRoleMenuModal form').on('submit', function(event) {
            event.preventDefault(); // Prevent the default form submission

            const roleId = $('#addIdmenu').val(); // Get the role ID
            const permissions = $('input[name="permission[]"]:checked').map(function() {
                return $(this).val(); // Get the values of checked checkboxes
            }).get();

            // AJAX request to save permissions
            $.ajax({
                url: '/saveMenuPermissions', // Adjust endpoint to just the route
                method: 'POST',
                data: {
                    roleId: roleId, // Pass the role ID in the data
                    permissions: permissions,
                    _token: $('meta[name="csrf-token"]').attr('content') // Include CSRF token for security
                },
                success: function(response) {
                    alert('Permissions saved successfully!');
                    $('#addRoleMenuModal').modal('hide'); // Hide the modal
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error: " + status + error);
                    alert('An error occurred while saving permissions.');
                }
            });
        });

        function  deleteData(id) {
            var csrf_token = $('meta[name="csrf-token"]').attr('content');
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover this imaginary file!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {
                        $.ajax({
                            url: "{{ url('Roles') }}" + '/' + id,
                            type: "POST",
                            data: {'_method': 'DELETE', '_token': csrf_token},
                            success: function (data) {
                                console.log(data);
                                var dataResult = JSON.parse(data);
                                if (dataResult.statusCode == 200) {
                                    $('#dataTableItem').DataTable().ajax.reload();
                                    swal({
                                        title: "Delete Done",
                                        text: "Poof! Your data file has been deleted!",
                                        icon: "success",
                                        button: "Done"
                                    });
                                } else {
                                    swal("Error occured !!");
                                }
                            }, error: function (data) {
                                console.log(data);
                                swal({
                                    title: "Opps...",
                                    text: "Error occured !",
                                    icon: "error",
                                    button: 'Ok ',
                                });
                            }
                        });
                    } else {
                        swal("Your imaginary file is safe!");
                    }
                });
        }

        function givePermissionToRole() {
            url = "{{ url('GivePermissionToRole') }}";
            $.ajax({
                url: url,
                type: "POST",
                data: new FormData($("#addRolePermissionModal form")[0]),
                contentType: false,
                processData: false,
                success: function (data) {
                    //console.log(data);
                    var dataResult = JSON.parse(data);
                    if (dataResult.statusCode == 200) {
                        $('#addRolePermissionModal').modal('hide');
                        $('#dataInfo-dataTable').DataTable().ajax.reload();
                        swal("Success", dataResult.statusMsg);
                        $('#addRolePermissionModal form')[0].reset();
                    }else {
                        swal("Failed", dataResult.statusMsg);

                    }
                }, error: function (xhr, status, error) {
                    var errorMessage = "Error occurred";
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        errorMessage = xhr.responseJSON.message;
                    } else if (xhr.responseText) {
                        errorMessage = xhr.responseText;
                    }
                    swal({
                        title: "Oops",
                        text: errorMessage,
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
            return false;
        };

    </script>
@endsection
