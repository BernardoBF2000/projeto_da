
namespace RestGest.Views
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panelNavigation = new System.Windows.Forms.Panel();
            this.panelView = new System.Windows.Forms.Panel();
            this.buttonMenu = new System.Windows.Forms.Button();
            this.buttonClients = new System.Windows.Forms.Button();
            this.buttonOrders = new System.Windows.Forms.Button();
            this.buttonRegister = new System.Windows.Forms.Button();
            this.panelNavigation.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelNavigation
            // 
            this.panelNavigation.Controls.Add(this.buttonMenu);
            this.panelNavigation.Controls.Add(this.buttonClients);
            this.panelNavigation.Controls.Add(this.buttonOrders);
            this.panelNavigation.Controls.Add(this.buttonRegister);
            this.panelNavigation.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelNavigation.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel, ((byte)(0)));
            this.panelNavigation.Location = new System.Drawing.Point(0, 0);
            this.panelNavigation.Name = "panelNavigation";
            this.panelNavigation.Size = new System.Drawing.Size(250, 451);
            this.panelNavigation.TabIndex = 0;
            // 
            // panelView
            // 
            this.panelView.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelView.Location = new System.Drawing.Point(250, 0);
            this.panelView.Name = "panelView";
            this.panelView.Size = new System.Drawing.Size(550, 451);
            this.panelView.TabIndex = 1;
            // 
            // buttonMenu
            // 
            this.buttonMenu.Dock = System.Windows.Forms.DockStyle.Top;
            this.buttonMenu.Image = global::RestGest.Properties.Resources.meal_40;
            this.buttonMenu.Location = new System.Drawing.Point(0, 240);
            this.buttonMenu.Name = "buttonMenu";
            this.buttonMenu.Size = new System.Drawing.Size(250, 80);
            this.buttonMenu.TabIndex = 3;
            this.buttonMenu.Text = "Menu";
            this.buttonMenu.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.buttonMenu.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.buttonMenu.UseVisualStyleBackColor = true;
            // 
            // buttonClients
            // 
            this.buttonClients.Dock = System.Windows.Forms.DockStyle.Top;
            this.buttonClients.Image = global::RestGest.Properties.Resources.customer_40;
            this.buttonClients.Location = new System.Drawing.Point(0, 160);
            this.buttonClients.Name = "buttonClients";
            this.buttonClients.Size = new System.Drawing.Size(250, 80);
            this.buttonClients.TabIndex = 2;
            this.buttonClients.Text = "Clientes";
            this.buttonClients.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.buttonClients.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.buttonClients.UseVisualStyleBackColor = true;
            // 
            // buttonOrders
            // 
            this.buttonOrders.Dock = System.Windows.Forms.DockStyle.Top;
            this.buttonOrders.Image = global::RestGest.Properties.Resources.purchase_order_40;
            this.buttonOrders.Location = new System.Drawing.Point(0, 80);
            this.buttonOrders.Name = "buttonOrders";
            this.buttonOrders.Size = new System.Drawing.Size(250, 80);
            this.buttonOrders.TabIndex = 1;
            this.buttonOrders.Text = "Pedidos";
            this.buttonOrders.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.buttonOrders.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.buttonOrders.UseVisualStyleBackColor = true;
            // 
            // buttonRegister
            // 
            this.buttonRegister.Dock = System.Windows.Forms.DockStyle.Top;
            this.buttonRegister.Image = global::RestGest.Properties.Resources.cash_register_40;
            this.buttonRegister.Location = new System.Drawing.Point(0, 0);
            this.buttonRegister.Name = "buttonRegister";
            this.buttonRegister.Size = new System.Drawing.Size(250, 80);
            this.buttonRegister.TabIndex = 0;
            this.buttonRegister.Text = "Registar";
            this.buttonRegister.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.buttonRegister.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.buttonRegister.UseVisualStyleBackColor = true;
            // 
            // MainForm
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(800, 451);
            this.Controls.Add(this.panelView);
            this.Controls.Add(this.panelNavigation);
            this.MinimumSize = new System.Drawing.Size(818, 498);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.panelNavigation.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelNavigation;
        private System.Windows.Forms.Panel panelView;
        private System.Windows.Forms.Button buttonRegister;
        private System.Windows.Forms.Button buttonOrders;
        private System.Windows.Forms.Button buttonClients;
        private System.Windows.Forms.Button buttonMenu;
    }
}