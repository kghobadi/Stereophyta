using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Stringing {

    public static string ToUppercase(this string value, bool caps){
        if(value.Length > 0){
            if(caps) return value.ToUpper();
            else return (value[0] + "").ToUpper() + value.Substring(1);
        }
        return value;
    }

}