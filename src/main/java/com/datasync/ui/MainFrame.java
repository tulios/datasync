package com.datasync.ui;

import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JProgressBar;

import com.datasync.ProcessarBackup;
import com.datasync.ProcessarSincronizacao;

@SuppressWarnings("serial")
public class MainFrame extends JFrame {

	private static MainFrame instance;
	
	// Componentes
	private JPanel painel;
	private JButton sync;
	private JButton backup;
	private JLabel mensagem;
	private JProgressBar progressBar;
	private JFileChooser fileChooser;
	
	private MainFrame(){
		super("Data Sync");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		createComponents();
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
	
	public void setProgressBarIndetermined(boolean indetermined){
		progressBar.setIndeterminate(indetermined);
	}
	
	public void setMensagem(String text){
		mensagem.setText(text);
		this.validate();
	}
	
	public void habilitarBotoes(){
		sync.setEnabled(true);
		backup.setEnabled(true);
	}
	
	private void clickSync(ActionEvent event){
		sync.setEnabled(false);
		new ProcessarSincronizacao().start();
	}
	
	private void clickBackup(ActionEvent event){
		backup.setEnabled(false);
		int result = fileChooser.showSaveDialog(this);
		
		if(result == JFileChooser.APPROVE_OPTION) {
			new ProcessarBackup(fileChooser.getSelectedFile().toString()).start();
		}
	}
	
	private void createComponents(){
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
		
		cons.gridx = 0;
		cons.gridy = 0;
		cons.gridwidth = 1;
		cons.anchor = GridBagConstraints.LINE_END;
		
		painel.add(sync, cons);
		
		//Cria o botão de backup
		backup = new JButton("Backup");
		backup.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				clickBackup(e);
			}
		});
		
		cons.gridx = 1;
		cons.gridy = 0;
		cons.gridwidth = 1;
		cons.anchor = GridBagConstraints.LINE_END;
		
		painel.add(backup, cons);
		//Fim da criação do botão de backup
		
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
		
		fileChooser = new JFileChooser();
		fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);

		cons.gridx = 0;
		cons.gridy = 2;
		cons.gridwidth = 2;
		cons.anchor = GridBagConstraints.CENTER;
		
		painel.add(progressBar, cons);
	}
	
	public void apresentarErro(String mensagem){
		this.apresentarErro("Erro ao executar operação", mensagem);
	}
	
	public void apresentarErro(String titulo, String mensagem) {
		JOptionPane.showMessageDialog(this, mensagem, titulo, JOptionPane.ERROR_MESSAGE);
	}
}
















































