using UnityEditor;
using UnityEngine;
using System.IO;

namespace AudioHelm
{
    public class NonNativeFileImporter : AssetPostprocessor
    {
        static bool ShouldImportFile(string asset)
        {
            return asset.ToLower().EndsWith(".mid");
        }

        static string GetResourceNameForAsset(string asset)
        {
            string extension = Path.GetExtension(asset).Substring(1).ToLower();
            return extension + "_" + Path.GetFileNameWithoutExtension(asset);
        }

        static string GetFolderPath()
        {
            return Application.dataPath + "/AudioHelm/Resources/";
        }

        static void CreateFolderPath()
        {
            if (!Directory.Exists(GetFolderPath()))
                Directory.CreateDirectory(GetFolderPath());
        }

        static string GetByteFilePath(string asset)
        {
            return GetFolderPath() + GetResourceNameForAsset(asset) + ".bytes";
        }

        static void ImportNonNativeFile(string asset)
        {
            string newFilePath = GetByteFilePath(asset);

            File.Copy(asset, newFilePath, true);
            AssetDatabase.Refresh(ImportAssetOptions.Default);
        }

        static void TryDelete(string asset)
        {
            CreateFolderPath();
            if (ShouldImportFile(asset))
                File.Delete(GetByteFilePath(asset));
        }

        static void TryCreate(string asset)
        {
            CreateFolderPath();
            if (ShouldImportFile(asset))
                ImportNonNativeFile(asset);
        }

        static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
        {
            foreach (string asset in deletedAssets)
                TryDelete(asset);

            foreach (string asset in movedFromAssetPaths)
                TryDelete(asset);

            foreach (string asset in movedAssets)
                TryCreate(asset);

            foreach (string asset in importedAssets)
                TryCreate(asset);
        }
    }
}
