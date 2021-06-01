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
    <main class="p-16">
        <h1 class="mb-5 font-medium">Create new employee</h1>
        <form action="process_employee" method="POST">
            <div class="grid grid-rows-2 grid-flow-col gap-4">
                <div>
                    <label>Name</label>
                    <input name="employeeName" tabindex="1"
                     class="focus:ring focus:border-blue-300 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        type="text" required ><br><br>
                </div>

                <div>
                    <label>Country</label>
                    <select name="country" tabindex="3" required
                        class="focus:ring focus:border-blue-300 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        id="country">
                        <option value="-1" hidden></option>
                        <#list countries as country>
                            <option value="${country}">${country}</option>
                        </#list>
                    </select>
                </div>
                <div>
                    <label>Surname</label>
                    <input name="employeeSurname" tabindex="2" required
                        class="focus:ring focus:border-blue-300 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                        type="text"><br><br>
                </div>
                <div>
                    <label>Department</label>
                      <select name="department" tabindex="4" required
                                            class="focus:ring focus:border-blue-300 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                            id="department">
                      </select>
                </div>
            </div>
        <button type="submit">Create Employee</button>
        </form>
    </main>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script
      src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
      integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
      crossorigin="anonymous"></script>
    <script>
        $( document ).ready(function() {

            $( "#country" ).change(function() {
                let country = $( "#country" ).val();
                let departments = $( "#department" );
                departments.find('option').remove();
                if(country == "Spain"){
                    $("<option>").val("research&development").text("Research & Development").appendTo(departments);
                    $("<option>").val("business").text("Business").appendTo(departments);
                }else if (country == "Milan"){
                    $("<option>").val("research&development").text("Research & Development").appendTo(departments);
                    $("<option>").val("business").text("Business").appendTo(departments);
                    $("<option>").val("advertising").text("Advertising").appendTo(departments);
                }else if (country == "New York"){
                    $("<option>").val("business").text("Business").appendTo(departments);
                    $("<option>").val("advertising").text("Advertising").appendTo(departments);
                }
            });
        });
    </script>
</body>

</html>