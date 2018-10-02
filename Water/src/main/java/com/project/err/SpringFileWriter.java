package com.project.err;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;

public class SpringFileWriter {
	private FileOutputStream fos;  

	public String writeFile(ArrayList<MultipartFile> list,String path)
	{
		String filenames="";
		Calendar cal=Calendar.getInstance();
		String time=cal.get(Calendar.MINUTE)+"_"+cal.get(Calendar.SECOND);

		//이미지 업로드를 안했을경우 list 는 null 이다
		if(list!=null)
		{
			for(MultipartFile file:list)
			{
				try {
					byte fileData[]=file.getBytes();
					//저장될 파일명을 분초_업로드파일명.확장자...이런식으로 저장하려면?
					String originalname=file.getOriginalFilename();
					String fname=time+"_"+originalname;
					filenames+=fname+":";
					fos=new 
							FileOutputStream(path+"\\"+fname);
					fos.write(fileData);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					try{
						if(fos!=null)
							fos.close();
					}catch(Exception e){}
				}	
			}//for
		}
		if(list==null)
		{
			//list 에 저장된 이미지가 없을경우
			filenames="none";
		}else {
			//파일을 분리한 : 중 마지막 : 지우기
			filenames=filenames.substring(0,filenames.length()-1);
		}
		return filenames;
	}

}





