package gui;

import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;

import java.awt.*;
import java.awt.event.*;



public class GUI_BanHang extends JFrame{

	private static final long serialVersionUID = 1L;
	private JPanel Frame;
	private JTextField txtSDT;
	private JTextField textField_1;
	private JTextField txtTienKH;
	private JTable tableHD;
	private JComboBox cbLoaiKH;
	private JTextField textField;
	private DefaultTableModel modelHD;



	/**
	 * Launch the application.
	 */
	 public static void main(String[] args) {
	        EventQueue.invokeLater(new Runnable() {
	            public void run() {
	                try {
	                    // Tạo một đối tượng JFrame
	                    JFrame frame = new JFrame();

	                    // Đặt thuộc tính toàn màn hình cho frame
	                    frame.setExtendedState(JFrame.MAXIMIZED_BOTH);

	                    // Đặt cửa sổ không có viền và không thể điều chỉnh kích thước
	                    frame.setUndecorated(true);

	                    // Tạo một đối tượng GUI_BanHang và hiển thị nó
	                    GUI_BanHang gui = new GUI_BanHang();
	                    gui.setVisible(true);

	                    // Thêm GUI_BanHang vào frame
	                    frame.getContentPane().add(gui);

	                    // Hiển thị frame
	                    frame.setVisible(true);
	                } catch (Exception e) {
	                    e.printStackTrace();
	                }
	            }
	        });
	    }
	/**
	 * Create the frame.
	 */
	public GUI_BanHang() {
	
		setTitle("Quản lý khách sạn");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(0,0,1920,1000);
		setLocationRelativeTo(null);
		Frame = new JPanel();
		Frame.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(Frame);
		Frame.setLayout(null);
        Border border1 = BorderFactory.createLineBorder(Color.BLACK, 1);
        Border border2 = BorderFactory.createLineBorder(Color.BLACK, 2);
		JPanel pTop = new JPanel();
		pTop.setBounds(10, 0, 1896, 131);
		Frame.add(pTop);
		pTop.setBorder(border2);
		pTop.setLayout(null);
		
		JButton btnQuanLiNhanVien = new JButton("Quản lí nhân viên");
		btnQuanLiNhanVien.setBounds(1099, 22, 310, 85);
		pTop.add(btnQuanLiNhanVien);
		btnQuanLiNhanVien.setFont(new Font("Tahoma", Font.PLAIN, 30));
		
		JButton btnBanHang = new JButton("Bán hàng");
		btnBanHang.setFont(new Font("Tahoma", Font.PLAIN, 30));
		btnBanHang.setBounds(40, 22, 310, 85);
		pTop.add(btnBanHang);
		
		JButton btnKho = new JButton("Kho");
		btnKho.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnKho.setFont(new Font("Tahoma", Font.PLAIN, 30));
		btnKho.setBounds(395, 22, 310, 85);
		pTop.add(btnKho);
		
		JButton btnNhapHang = new JButton("Nhập hàng");
		btnNhapHang.setFont(new Font("Tahoma", Font.PLAIN, 30));
		btnNhapHang.setBounds(746, 22, 310, 85);
		pTop.add(btnNhapHang);
		
		JButton btnHoTro = new JButton("Hổ trợ");
		btnHoTro.setFont(new Font("Tahoma", Font.PLAIN, 30));
		btnHoTro.setBounds(1455, 22, 310, 85);
		pTop.add(btnHoTro);
		btnQuanLiNhanVien.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		
		JPanel pCenterRight = new JPanel();
		pCenterRight.setBounds(1336, 141, 570, 822);
		Frame.add(pCenterRight);
		pCenterRight.setLayout(null);
		
	    txtSDT = new JTextFieldWithPlaceholder("Số điện thoại khách hàng");
		txtSDT.setFont(new Font("Tahoma", Font.PLAIN, 20));
		txtSDT.setBounds(40, 15, 490, 50);
		pCenterRight.add(txtSDT);
		txtSDT.setColumns(10);
		
		cbLoaiKH = new JComboBox();
		cbLoaiKH.setFont(new Font("Tahoma", Font.PLAIN, 20));
		cbLoaiKH.addItem("Khách hàng thường");
		cbLoaiKH.addItem("Khách hàng VIP1");
		cbLoaiKH.addItem("Khách hàng VIP2");
		cbLoaiKH.setBounds(40, 70, 490, 50);
		pCenterRight.add(cbLoaiKH);
		JPanel panel = new JPanel();
		pCenterRight.setBorder(border2);
		pCenterRight.add(panel);
		panel.setBounds(10, 128, 547, 2);
		pCenterRight.add(panel);
		panel.setLayout(new BorderLayout(0, 0));
		panel.setBorder(border1);
		
		JLabel lblNewLabel = new JLabel("Tổng tiền hàng:");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblNewLabel.setBounds(40, 150, 245, 50);
		pCenterRight.add(lblNewLabel);
		
		JLabel lblTongTien = new JLabel("000.000.000");
		lblTongTien.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblTongTien.setBounds(285, 150, 245, 50);
		pCenterRight.add(lblTongTien);
		
		JLabel lblGimGi = new JLabel("Giảm giá");
		lblGimGi.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblGimGi.setBounds(40, 210, 245, 50);
		pCenterRight.add(lblGimGi);
		
		JLabel lblKhuyenmai = new JLabel("00%");
		lblKhuyenmai.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblKhuyenmai.setBounds(285, 210, 245, 50);
		pCenterRight.add(lblKhuyenmai);
		
		JLabel lblTinKhcha = new JLabel("Tiền khách đưa");
		lblTinKhcha.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblTinKhcha.setBounds(40, 270, 245, 50);
		pCenterRight.add(lblTinKhcha);
		
		txtTienKH = new JTextField();
		txtTienKH.setFont(new Font("Tahoma", Font.PLAIN, 20));
		txtTienKH.setColumns(10);
		txtTienKH.setBounds(285, 275, 210, 50);
		pCenterRight.add(txtTienKH);
		
		JButton btnNewButton = new JButton("");
		btnNewButton.setBounds(505, 275, 53, 50);
		pCenterRight.add(btnNewButton);
		
		JButton btnTien8 = new JButton("1.000.000");
		btnTien8.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien8.setBounds(430, 390, 123, 50);
		pCenterRight.add(btnTien8);
		
		JButton btnTien7 = new JButton("1.000.000");
		btnTien7.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien7.setBounds(290, 390, 123, 50);
		pCenterRight.add(btnTien7);
		
		JButton btnTien6 = new JButton("1.000.000");
		btnTien6.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien6.setBounds(150, 390, 123, 50);
		pCenterRight.add(btnTien6);
		
		JButton btnTien5 = new JButton("1.000.000");
		btnTien5.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien5.setBounds(10, 390, 123, 50);
		pCenterRight.add(btnTien5);
		
		JButton btnTien1 = new JButton("1.000.000");
		btnTien1.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien1.setBounds(10, 330, 123, 50);
		pCenterRight.add(btnTien1);
		
		JButton btnTien2 = new JButton("1.000.000");
		btnTien2.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien2.setBounds(150, 330, 123, 50);
		pCenterRight.add(btnTien2);
		
		JButton btnTien3 = new JButton("1.000.000");
		btnTien3.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien3.setBounds(290, 330, 123, 50);
		pCenterRight.add(btnTien3);
		
		JButton btnTien4 = new JButton("1.000.000");
		btnTien4.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnTien4.setBounds(430, 330, 123, 50);
		pCenterRight.add(btnTien4);
		
		JLabel lblTinThi = new JLabel("Tiền thối");
		lblTinThi.setFont(new Font("Tahoma", Font.PLAIN, 30));
		lblTinThi.setBounds(40, 461, 245, 50);
		pCenterRight.add(lblTinThi);
		
		JLabel lblTienThoi = new JLabel("000.000.000");
		lblTienThoi.setFont(new Font("Tahoma", Font.PLAIN, 30));
		lblTienThoi.setBounds(285, 461, 245, 50);
		pCenterRight.add(lblTienThoi);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBounds(10, 521, 547, 2);
		pCenterRight.add(panel_1);
		panel_1.setLayout(new BorderLayout(0, 0));
		
		JButton btnLuutam = new JButton("Lưu tạm");
		btnLuutam.setFont(new Font("Tahoma", Font.PLAIN, 25));
		btnLuutam.setBounds(10, 530, 175, 124);
		pCenterRight.add(btnLuutam);
		
		JButton btnThanToan = new JButton("Thanh Toán");
		btnThanToan.setFont(new Font("Tahoma", Font.PLAIN, 30));
		btnThanToan.setBounds(10, 737, 543, 75);
		pCenterRight.add(btnThanToan);
		
		JButton btnXLDT = new JButton("Xữ lí hóa đơn lưu tạm");
		btnXLDT.setFont(new Font("Tahoma", Font.PLAIN, 30));
		btnXLDT.setBounds(10, 657, 543, 75);
		pCenterRight.add(btnXLDT);

		panel_1.setBorder(border1);
		
		JButton btnHuyPhieu = new JButton("Hủy phiếu");
		btnHuyPhieu.setFont(new Font("Tahoma", Font.PLAIN, 25));
		btnHuyPhieu.setBounds(195, 530, 175, 124);
		pCenterRight.add(btnHuyPhieu);
		
		JButton btnKetToan = new JButton("Kết toán");
		btnKetToan.setFont(new Font("Tahoma", Font.PLAIN, 25));
		btnKetToan.setBounds(380, 530, 175, 124);
		pCenterRight.add(btnKetToan);
		
		JPanel pCenterLetf = new JPanel();
		pCenterLetf.setBounds(10, 141, 1315, 825);
		Frame.add(pCenterLetf);
		pCenterLetf.setBorder(border2);
		pCenterLetf.setLayout(null);
		String[] cols = new String[] {"STT", "Mã sản phẩm", "Tên sản phẩm", "Gía ", "Số lượng", "Tổng tiền"};
       
        
        modelHD = new DefaultTableModel(cols, 0);
        modelHD.addRow(new Object[] {1, "SP001", "Sản phẩm 1", 100000, 100000});
	
		pCenterLetf.setLayout(null);
		JTable tableHD = new JTable(modelHD);
		JScrollPane paneNV = new JScrollPane(tableHD);
		paneNV.setBounds(10, 77, 1295, 738);
		pCenterLetf.add(paneNV);
	
		JTableHeader headers = tableHD.getTableHeader();
		Font headerFont = new Font("Tahoma", Font.PLAIN, 25);
		headers.setFont(headerFont);
	
		tableHD.setFont(new Font("Tahoma", Font.PLAIN, 20));
	
		DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
		centerRenderer.setHorizontalAlignment(JLabel.CENTER);
		tableHD.setDefaultRenderer(Object.class, centerRenderer);
        int rowHeight = 30; // Chiều cao mong muốn cho mỗi hàng
        tableHD.setRowHeight(rowHeight);
        
        textField = new JTextField();
        textField.setBounds(40, 20, 305, 39);
        pCenterLetf.add(textField);
        textField.setColumns(10);
        
        JButton btnNewButton_1 = new JButton("Them");
        btnNewButton_1.setBounds(369, 20, 96, 39);
        pCenterLetf.add(btnNewButton_1);
}
	private class JTextFieldWithPlaceholder extends JTextField implements FocusListener {
        private String placeholder;
        private boolean isPlaceholderVisible;

        public JTextFieldWithPlaceholder(String placeholder) {
            this.placeholder = placeholder;
            this.isPlaceholderVisible = true;
            addFocusListener(this);
        }

        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);

            if (isPlaceholderVisible && getText().isEmpty() && !isFocusOwner()) {
                Graphics2D g2 = (Graphics2D) g.create();
                g2.setColor(Color.GRAY);
                g2.setFont(getFont().deriveFont(Font.ITALIC));
                int x = getInsets().left;
                int y = g.getFontMetrics().getMaxAscent() + getInsets().top;
                g2.drawString(placeholder, x, y);
                g2.dispose();
            }
        }

        @Override
        public void focusGained(FocusEvent e) {
            if (isPlaceholderVisible) {
                isPlaceholderVisible = false;
                repaint();
            }
        }
        
        @Override
        public void focusLost(FocusEvent e) {
            if (getText().isEmpty()) {
                isPlaceholderVisible = true;
                repaint();
            }
        }
    }
	private class QuantityCellEditor extends DefaultCellEditor {
        private JButton button;
        private int quantity;

        public QuantityCellEditor() {
            super(new JTextField());
            button = new JButton("+");
            button.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent e) {
                    // Tăng số lượng khi nút '+' được nhấn
                    quantity++;
                    fireEditingStopped();
                }
            });
        }

        public Component getTableCellEditorComponent(JTable table, Object value,
                                                     boolean isSelected, int row, int column) {
            quantity = (Integer) value;
            return button;
        }

        public Object getCellEditorValue() {
            return quantity;
        }
    }

    
}
