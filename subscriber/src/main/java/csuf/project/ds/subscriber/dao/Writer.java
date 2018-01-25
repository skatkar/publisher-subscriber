/**
 * 
 */
package csuf.project.ds.subscriber.dao;


import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;

/**
 * @author SWAPNIL
 *
 */
public class Writer {
	
	DateFormat dateFormatForFileName = new SimpleDateFormat("yyyyMMdd");
	
	public void initialize() {
		System.out.println("%%%%%%  Initializing factory method %%%%%%");
		initializeFiles();
	}
	
	
	/**
	 * Cron expression is represented as
	        second, minute, hour, day of month, month, day(s) of week 
	 */
	 
	@Scheduled(cron = "0 1 0 * * *")
	protected void repeatEveryminute() {
		System.out.println("^^^^^^^ This method will be repeated every day ^^^^^^^");
		initializeFiles();
	}
	
	private void initializeFiles() {
		
		/*DateFormat dateFormatForFileName = new SimpleDateFormat("yyyyMMdd");*/

		List<String> keys = new ArrayList<String>();
		keys.add("feedback");
		keys.add("Subscriber1");
		keys.add("Subscriber2");
		keys.add("Subscriber3");

		for (String key : keys) {
			File file = new File("reports\\" + key + "_" + dateFormatForFileName.format(Calendar.getInstance().getTime()) + ".csv");
			
			if(!file.exists()) {
				
				try {
					FileWriter fileWriter = new FileWriter(file, true);

					if ("feedback".equals(key)) {
						fileWriter.write("Date" + "," + "Ratings" + "," + "Feedback" + "\n");
						fileWriter.close();
					} else {
						fileWriter.write("Date" + "," + "Alert type" + "," + "Description" + "\n");
						fileWriter.close();
					}
				} catch (IOException e) {
					System.out.println("initialize() - " + "Exception while instantiating file object");
					e.printStackTrace();
				}
			}
			
		}
	}
	
	public void writeToCSVFile(String key,String...content) {
		
		DateFormat dateFormatForRecords = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		
		Date date = Calendar.getInstance().getTime();
						
		File file = new File("reports\\"+key +"_"+ dateFormatForFileName.format(date) + ".csv");
		
		try {
						
			int i=0;
			String fileRecord="";
			
			FileWriter fileWriter = new FileWriter(file, true);
			
			for(;i<content.length-1;i++) {
				fileRecord = content[i].concat(",").toUpperCase(); 
			}
			
			fileRecord = fileRecord.concat(content[i]);
			
			fileWriter.write(dateFormatForRecords.format(date) + ","+ fileRecord + "\n");
			fileWriter.close();
			
			System.out.println("Finished writing to the file........");
			
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}

}
