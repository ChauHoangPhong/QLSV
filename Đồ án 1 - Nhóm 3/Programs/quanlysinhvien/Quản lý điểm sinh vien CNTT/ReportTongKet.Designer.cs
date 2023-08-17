namespace Quản_lý_điểm_sinh_vien_CNTT
{
    partial class ReportTongKet
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ReportTongKet));
            this.tblKET_QUABindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataSettongketdiem = new Quản_lý_điểm_sinh_vien_CNTT.DataSettongketdiem();
            this.tblKET_QUATableAdapter = new Quản_lý_điểm_sinh_vien_CNTT.DataSettongketdiemTableAdapters.tblKET_QUATableAdapter();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.DataSettongket = new Quản_lý_điểm_sinh_vien_CNTT.DataSettongket();
            ((System.ComponentModel.ISupportInitialize)(this.tblKET_QUABindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSettongketdiem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSettongket)).BeginInit();
            this.SuspendLayout();
            // 
            // tblKET_QUABindingSource
            // 
            this.tblKET_QUABindingSource.DataMember = "tblKET_QUA";
            this.tblKET_QUABindingSource.DataSource = this.DataSettongketdiem;
            // 
            // DataSettongketdiem
            // 
            this.DataSettongketdiem.DataSetName = "DataSettongketdiem";
            this.DataSettongketdiem.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tblKET_QUATableAdapter
            // 
            this.tblKET_QUATableAdapter.ClearBeforeFill = true;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSettongket_tblKET_QUA";
            reportDataSource1.Value = this.tblKET_QUABindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Quản_lý_điểm_sinh_vien_CNTT.Reporttongket.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(919, 523);
            this.reportViewer1.TabIndex = 0;
            // 
            // DataSettongket
            // 
            this.DataSettongket.DataSetName = "DataSettongket";
            this.DataSettongket.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // ReportTongKet
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(919, 523);
            this.Controls.Add(this.reportViewer1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "ReportTongKet";
            this.Text = "Tổng kết";
            this.Load += new System.EventHandler(this.ReportTongKet_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tblKET_QUABindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSettongketdiem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSettongket)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.BindingSource tblKET_QUABindingSource;
        private DataSettongketdiem DataSettongketdiem;
        private Quản_lý_điểm_sinh_vien_CNTT.DataSettongketdiemTableAdapters.tblKET_QUATableAdapter tblKET_QUATableAdapter;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private DataSettongket DataSettongket;
    }
}