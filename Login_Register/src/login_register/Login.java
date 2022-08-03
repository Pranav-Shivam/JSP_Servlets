package login_register;
import java.io.*;
import java.sql.*;
import javax.swing.JOptionPane;

public class Login extends javax.swing.JFrame {

    public Login() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLblPass = new javax.swing.JLabel();
        jTxtUser = new javax.swing.JTextField();
        jLogin = new javax.swing.JButton();
        jRegister = new javax.swing.JButton();
        jTxtPass = new javax.swing.JPasswordField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("UserName");

        jLblPass.setText("PassWord");

        jTxtUser.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTxtUserActionPerformed(evt);
            }
        });

        jLogin.setText("Login");
        jLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jLoginActionPerformed(evt);
            }
        });

        jRegister.setText("Register");
        jRegister.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRegisterActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(115, 115, 115)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLblPass, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jTxtUser)
                    .addComponent(jTxtPass, javax.swing.GroupLayout.DEFAULT_SIZE, 233, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(195, Short.MAX_VALUE)
                .addComponent(jRegister)
                .addGap(18, 18, 18)
                .addComponent(jLogin)
                .addGap(158, 158, 158))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(105, 105, 105)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jTxtUser, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLblPass)
                    .addComponent(jTxtPass, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(64, 64, 64)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLogin)
                    .addComponent(jRegister))
                .addContainerGap(80, Short.MAX_VALUE))
        );

        jLabel1.getAccessibleContext().setAccessibleName("jLabelUser");

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jLoginActionPerformed
        String user=jTxtUser.getText();
        String pass=jTxtPass.getText();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newDb","root","root");  
            String sql="select * from user1";
            Statement ps=con.createStatement();
            ResultSet rs=ps.executeQuery(sql);
            boolean flag=false;
            while(rs.next())
            {
                String u=rs.getString(1);
                String p=rs.getString(2);
                if(u.equals(user) && p.equals(pass))
                {
                    flag=true;
                    break;
                }
            }
            if(!flag)
            {
                JOptionPane.showMessageDialog(null, "Invalid Login");
            }
            else
            {
                setVisible(false);
                new Abc().setVisible(true);
            }
            con.close();
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
    }//GEN-LAST:event_jLoginActionPerformed

    private void jTxtUserActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTxtUserActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTxtUserActionPerformed

    private void jRegisterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRegisterActionPerformed
        String user=jTxtUser.getText();
        String pass=jTxtPass.getText();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newDb","root","root");  
            String sql="insert into user1 values(?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            int i=ps.executeUpdate();
            System.out.println(i+" Rows Updated");
            con.close();
        }
        catch(Exception ex)
        {
            System.out.println("ex");
        }
    }//GEN-LAST:event_jRegisterActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) 
    {
       
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLblPass;
    private javax.swing.JButton jLogin;
    private javax.swing.JButton jRegister;
    private javax.swing.JPasswordField jTxtPass;
    private javax.swing.JTextField jTxtUser;
    // End of variables declaration//GEN-END:variables
}
