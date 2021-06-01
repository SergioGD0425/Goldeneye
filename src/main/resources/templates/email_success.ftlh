<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Goldeneye</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>

<body>
    <header class="p-4 bg-blue-500">
        <h1 class="text-center text-xl text-white font-medium">
            New Employee
        </h1>
    </header>
    <div class="p-10">
        <p class="text-center font-medium">
            The user ${employee.employeeName} ${employee.employeeSurname} was created successfully!
        </p>
        <h1 class="text-center font-medium">
               The Email associated to this user is: </br>
               ${email}
        </h1>
    </div>
</body>

</html>