<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <script src="script.js" defer></script>
</head>
<body style="margin: 0; font-family: 'Arial', sans-serif; display: flex; height: 100vh; background-color: #f4f4f9;">

    <!-- Sidebar -->
    <div class="sidebar" style="width: 250px; background-color: #333; color: #fff; padding: 20px; box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); height: 100%; position: fixed;">
        <h2 style="text-align: center; margin-bottom: 20px; font-size: 20px; text-transform: uppercase; border-bottom: 2px solid #555; padding-bottom: 10px;">Admin Dashboard</h2>
        <ul style="list-style-type: none; padding: 0;">
            <li style="margin: 15px 0;"><a href="#" onclick="showSection('dashboard')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Dashboard</a></li>
            <li style="margin: 15px 0;"><a href="#" onclick="showSection('funds')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Manage Funds</a></li>
            <li style="margin: 15px 0;"><a href="#" onclick="showSection('investors')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Investors</a></li>
            <li style="margin: 15px 0;"><a href="addinvestment.jsp" onclick="showSection('Add Investment Plans')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Add Investment Plans</a></li>
            <li style="margin: 15px 0;"><a href="reports.jsp" onclick="showSection('reports')" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Reports</a></li>
            <li style="margin: 15px 0;"><a href="index.jsp" onclick="logout()" style="color: #fff; text-decoration: none; font-size: 16px; display: block; padding: 10px 15px; border-radius: 5px; transition: background-color 0.3s;">Logout</a></li>
        </ul>
    </div>

    <!-- Content -->
    <div class="content" style="margin-left: 250px; padding: 20px; width: calc(100% - 250px);">
        <div id="dashboard" class="section active" style="display: block;">
            <h1 style="font-size: 24px; margin-bottom: 20px;">Dashboard</h1>
            <p style="font-size: 16px; line-height: 1.6; color: #333;">Welcome to the Admin Dashboard! Here you can manage funds, investors, and view reports.</p>
        </div>
        <div id="funds" class="section" style="display: none;">
            <h1 style="font-size: 24px; margin-bottom: 20px;">Manage Funds</h1>
            <button onclick="addFund()" style="padding: 10px 15px; font-size: 14px; background-color: #007bff; color: #fff; border: none; border-radius: 5px; cursor: pointer; transition: background-color 0.3s;">Add New Fund</button>
            <table style="width: 100%; border-collapse: collapse; margin-top: 20px; background-color: #fff; border: 1px solid #ddd;">
                <thead>
                    <tr>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">ID</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Name</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Category</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Risk Level</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Actions</th>
                    </tr>
                </thead>
                <tbody id="funds-table">
                    <!-- Dynamically populated -->
                </tbody>
            </table>
        </div>
        <div id="investors" class="section" style="display: none;">
            <h1 style="font-size: 24px; margin-bottom: 20px;">Investors</h1>
            <table style="width: 100%; border-collapse: collapse; margin-top: 20px; background-color: #fff; border: 1px solid #ddd;">
                <thead>
                    <tr>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">ID</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Name</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Email</th>
                        <th style="padding: 12px; text-align: left; background-color: #f4f4f9; color: #333; text-transform: uppercase; font-size: 14px; border: 1px solid #ddd;">Investment</th>
                    </tr>
                </thead>
                <tbody id="investors-table">
                    <!-- Dynamically populated -->
                </tbody>
            </table>
        </div>
        <div id="reports" class="section" style="display: none;">
            <h1 style="font-size: 24px; margin-bottom: 20px;">Reports</h1>
            <p style="font-size: 16px; line-height: 1.6; color: #333;">Generate and view reports for investments and performance.</p>
            <button onclick="generateReport()" style="padding: 10px 15px; font-size: 14px; background-color: #007bff; color: #fff; border: none; border-radius: 5px; cursor: pointer; transition: background-color 0.3s;">Generate Report</button>
        </div>
    </div>

</body>
</html>
