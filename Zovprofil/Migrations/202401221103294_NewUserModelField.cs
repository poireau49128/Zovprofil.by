namespace Zovprofil.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NewUserModelField : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "ClientID", c => c.Int(nullable: false));
            AddColumn("dbo.AspNetUsers", "Enabled", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "Enabled");
            DropColumn("dbo.AspNetUsers", "ClientID");
        }
    }
}
