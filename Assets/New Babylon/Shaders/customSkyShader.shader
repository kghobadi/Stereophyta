// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Custom/Unlit/customSkyShader"
{
	Properties
	{
		_LowColor("LowColor", Color) = (1, 1, 1, 1)
		_HighColor("HighColor", Color) = (1, 1, 1, 1)
		_thresh("Threshold", float) = .4
		_waveHeight("Height", range(-100, 100)) = .5
		_waveFreq("Freq", range(.01, 100)) = 7
		_MidColor("MidColor", Color) = (1, 1, 1, 1)
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag


			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;

			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;


			};

			float4 _LowColor;
			float4 _HighColor;
			float4 _MidColor;

			float _thresh;
			float _waveHeight;
			float _waveFreq;


			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				//float3 wPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				//o.worldPos = wPos;
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = _LowColor;

				//if(i.vertex.y >= (_waveHeight * sin((i.vertex.x) * _waveFreq))){
				//	col.rgb = _HighColor;
				//}


				if(i.vertex.y >= (((_thresh + ((_waveHeight *_SinTime.x)) * sin(i.vertex.x/_waveFreq + _Time.x))))){
					col = _HighColor;
				}
				if(i.vertex.y >= ((((_thresh + 50) + ((_waveHeight *_SinTime.y)) * sin(i.vertex.x/_waveFreq + _Time.y))))){
					col = _MidColor;
				}

				return col;
			}
			ENDCG
		}
	}
}
