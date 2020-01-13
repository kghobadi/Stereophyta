using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Texturing {

    public static Texture2D GetRandomSection(Texture texture, int width, int height){
        int w = texture.width;
        int h = texture.height;

        int x = Random.Range(0, w - width);
        int y = Random.Range(0, h - height);

        return GetSection(texture, x, y, width, height);
    }

    public static Texture2D GetSection(Texture texture, int x, int y, int width, int height){
        Texture2D aTex = ToTexture2D(texture);
        Texture2D bTex = new Texture2D(width, height, aTex.format, false);

        Color[] cols = aTex.GetPixels(x, y, width, height);
        bTex.SetPixels(cols);
        bTex.Apply();

        return bTex;
    }

    public static Texture2D ToTexture2D(Texture texture){
        return (Texture2D)texture;
    }

    public static Texture2D EncodeBytesToTexture2D(byte[] bytes){
        Texture2D tex = new Texture2D(Screen.width, Screen.height, TextureFormat.RGB24, false, false);

        tex.LoadImage(bytes);
        tex.Apply();

        return tex;
    }
}