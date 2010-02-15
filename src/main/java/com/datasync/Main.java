package com.datasync;

import com.datasync.ui.MainFrame;

public class Main {
	
    public static void main(String[] args) throws Exception {
    	MainFrame.getInstance();
    }
    
    public static int getPorcentagemAtual(int valor, int total){
    	return (int) (100*valor)/total;
    }
    
}
