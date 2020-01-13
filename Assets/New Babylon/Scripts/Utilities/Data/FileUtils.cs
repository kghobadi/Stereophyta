//using System.Collections;
//using System.Collections.Generic;
//using System.Runtime.Serialization.Formatters.Binary;
//using System.IO;
//using System.Threading.Tasks;
//using System;
//using UnityEngine;

//public static class FileUtils {

//    public static void EnsureDirectory(string dir){
//        if(!Directory.Exists(dir))
//            Directory.CreateDirectory(dir);
//    }

//    public static string GetDirectory(string path){
//        int backslashInd = path.LastIndexOf('/');
//        string dir = path.Substring(0, (path.Length - backslashInd));

//        return dir;
//    }

//    // Snippet for async/await file move, source (https://stackoverflow.com/questions/14162983/system-io-file-move-how-to-wait-for-move-completion)
//    public static async Task MoveFile(string source, string dest){
//        try
//        {
//            using (FileStream sourceStream = File.Open(source, FileMode.Open))
//            {
//                using (FileStream destinationStream = File.Create(dest))
//                {
//                    await sourceStream.CopyToAsync(destinationStream);
            
//                        sourceStream.Close();
//                        File.Delete(source);
//                }
//            }
//        }
//        catch (IOException ioex)
//        {
//            Debug.Log(ioex.Message);
//        }
//        catch (Exception ex)
//        {
//            Debug.Log(ex.Message);
//        }
//    }

//}