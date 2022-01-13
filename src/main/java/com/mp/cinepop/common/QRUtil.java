package com.mp.cinepop.common;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

public class QRUtil {
	 public void createPdQr(String qrInfo, String fileName) {
			try {
				QRCodeWriter writer = new QRCodeWriter();
		        qrInfo = new String(qrInfo.getBytes("UTF-8"), "ISO-8859-1");
		        BitMatrix matrix = writer.encode(qrInfo, BarcodeFormat.QR_CODE, 500, 500);

		        int qrColor = 0xff020202;
		        int backgroundColor = 0xFFFFFFFF;

		        MatrixToImageConfig config = new MatrixToImageConfig(qrColor, backgroundColor);
		        
		        BufferedImage image = new BufferedImage(10, 10, BufferedImage.TYPE_BYTE_BINARY);
		        BufferedImage qrimage = MatrixToImageWriter.toBufferedImage(matrix, config);
		        
		        //현재 프로젝트 경로를 구하기 위함
		        File file=new File("");
		        String filePath=file.getAbsolutePath()+"/src/main/webapp/resources/qrCode/";
		        fileName+=".jpg";
		        
		        //파일생성
		        file=new File(filePath+fileName);
		        		
				ImageIO.write(qrimage, "jpg", file);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		}
}
