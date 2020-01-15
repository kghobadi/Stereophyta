using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System;
using UnityEngine;

public static class DataHandler {

	public static bool ready = true;

	public static bool Write<T>(T dat, string path){
		BinaryFormatter bf = new BinaryFormatter();
		FileStream file = File.Create(path);

		try{
			bf.Serialize(file, dat);
			file.Close();

			return true;
		} catch(Exception e){
			file.Close();
			return false;
		}
	}

	public static T Read<T>(string path){
		if(File.Exists(path)){
			BinaryFormatter bf = new BinaryFormatter();
			FileStream file = File.Open(path, FileMode.Open);

			T dat = (T)bf.Deserialize(file);
			file.Close();

			return dat;
		}
		
		return default(T);
	}

	public static T ReadJSON<T>(string path){
		if(File.Exists(path)){
			string json = File.ReadAllText(path);
			
			T dat = JsonUtility.FromJson<T>(json);
			return dat;
		}

		return default(T);
	}

	public static void WriteJSON<T>(T dat, string path, bool pretty){
		string json = JsonUtility.ToJson(dat, pretty);
		File.WriteAllText(path, json);  
	}

	public static bool Delete(string path){
		if(File.Exists(path)){
			File.Delete(path);

			return true;
		}
		return false;
	}
}
