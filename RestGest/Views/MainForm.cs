using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RestGest.Views
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();

            RegisterView view = new RegisterView
            {
                Dock = DockStyle.Fill
            };
            panelView.Controls.Add(view);
        }
    }
}
