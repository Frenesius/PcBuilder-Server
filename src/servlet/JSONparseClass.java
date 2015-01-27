package servlet;


import java.sql.SQLException;
import java.util.ArrayList;

import servlet.UserRequest;
import main.PcBuilder;

import org.json.JSONException;
import org.json.JSONObject;

	public class JSONparseClass {

		private static final long serialVersionUID = 1L;
		public static ArrayList JSONStringsArrayList = new ArrayList();

		public static ArrayList Start() throws JSONException {
			return subStringingJSONObject();
		}
		
		public static ArrayList subStringingJSONObject() throws JSONException {
		
			String userInputJSONFromChosenParts = UserRequest.getParsedJSONString().replaceAll("\"", "\'");
			
			JSONObject jsonObjectFromUser = new JSONObject(userInputJSONFromChosenParts);
			String tempCpu = jsonObjectFromUser.optString("cpu");
			String tempGpu = jsonObjectFromUser.optString("gpu");
			String tempRam = jsonObjectFromUser.optString("ram");
			String tempHdd = jsonObjectFromUser.optString("hdd");
			String tempSsd = jsonObjectFromUser.optString("ssd");
			String tempPsu = jsonObjectFromUser.optString("psu");
			String tempCase = jsonObjectFromUser.optString("case");
			String tempMobo = jsonObjectFromUser.optString("mob");
			String tempOpt = jsonObjectFromUser.optString("opt");
			String tempSound = jsonObjectFromUser.optString("sound");
			
			if (tempCpu.isEmpty()) 
				tempCpu = null;
			if (tempGpu.isEmpty())
				tempGpu = null;			
			if (tempRam.isEmpty()) 
				tempRam = null;
			if (tempHdd.isEmpty()) 
				tempHdd = null;
			if (tempSsd.isEmpty()) 
				tempSsd = null;
			if (tempPsu.isEmpty()) 
				tempPsu = null;
			if (tempCase.isEmpty()) 
				tempCase = null;
			if (tempMobo.isEmpty())
				tempMobo = null;	
			if (tempOpt.isEmpty()) 
				tempOpt = null;
			if (tempSound.isEmpty()) 
				tempSound = null;
		
		
			JSONStringsArrayList.add(0, tempCpu);
			JSONStringsArrayList.add(1, tempGpu);
			JSONStringsArrayList.add(2, tempRam);
			JSONStringsArrayList.add(3, tempHdd);
			JSONStringsArrayList.add(4, tempSsd);
			JSONStringsArrayList.add(5, tempPsu);
			JSONStringsArrayList.add(6, tempCase);
			JSONStringsArrayList.add(7, tempMobo);
			JSONStringsArrayList.add(8, tempOpt);
			JSONStringsArrayList.add(9, tempSound);
			
			PcBuilder pcBuiler = new PcBuilder();
			ArrayList arr = new ArrayList();
			long startTime = System.currentTimeMillis();
			
			try {
				arr = pcBuiler.fullCheck(JSONStringsArrayList);
			} catch (SQLException e) {
				System.out.println("Abid");
				e.printStackTrace();
			}
			long endTime   = System.currentTimeMillis();
			long totalTime = endTime - startTime;
			
			System.out.println("[Performance]Total time: " +totalTime);
			for(int i = 0; i<arr.size();i++){
				System.out.println(arr.get(i));
			}
			return arr;
			
		}
		
		public ArrayList<String> getJSONArrayListStringList() {
			return JSONStringsArrayList;
		}
		public ArrayList matchComponents(ArrayList components){
			return null;
		}
}
