package com.datasync.ui;

import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JProgressBar;

@SuppressWarnings("serial")
public class MainFrame extends JFrame {

	private static MainFrame instance;
	
	// Componentes
	private JPanel painel;
	private JButton sync;
	private JLabel mensagem;
	private JProgressBar progressBar;
	
	private MainFrame(){
		super("Data Sync");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		create();
		this.pack();
		this.setResizable(false);
	}
	
	public static void start(){
		MainFrame.getInstance();
		MainFrame.getInstance().setVisible(true);
	}
	
	public static MainFrame getInstance(){
		if (instance == null){
			instance = new MainFrame();
		}
		return instance;
	}
	
	public void setProgressBarValue(int value){
		progressBar.setValue(value);
		progressBar.validate();
		this.validate();
	}
	
	public void setMensagem(String text){
		mensagem.setText(text);
		this.validate();
	}
	
	public void habilitarSync(){
		sync.setEnabled(true);
	}
	
	private void clickSync(ActionEvent event){
		sync.setEnabled(false);
		Processar p = new Processar();
		p.start();
	}
	
	private void create(){
		painel = new JPanel();
		painel.setLayout(new GridBagLayout());
		this.add(painel);
		
		GridBagConstraints cons = new GridBagConstraints();
		cons.insets = new Insets(2,15,2,15);
		
		sync = new JButton("Sincronizar");
		sync.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				clickSync(e);
			}
		});
		
		cons.gridx = 1;
		cons.gridy = 0;
		cons.gridwidth = 1;
		cons.anchor = GridBagConstraints.LINE_END;
		
		painel.add(sync, cons);
		
		mensagem = new JLabel("Parado.");
		cons.gridx = 0;
		cons.gridy = 1;
		cons.gridwidth = 2;
		cons.anchor = GridBagConstraints.LINE_START;
		
		painel.add(mensagem, cons);
		
		progressBar = new JProgressBar();
		progressBar.setIndeterminate(false);
		progressBar.setMaximum(100);
		progressBar.setMinimum(1);
		progressBar.setStringPainted(true);
		progressBar.setPreferredSize(new Dimension(430, 40));
		
		cons.gridx = 0;
		cons.gridy = 2;
		cons.gridwidth = 2;
		cons.anchor = GridBagConstraints.CENTER;
		
		painel.add(progressBar, cons);
	}
}
















































