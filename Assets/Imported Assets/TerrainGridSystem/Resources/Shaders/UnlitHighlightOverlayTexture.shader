﻿Shader "Terrain Grid System/Unlit Highlight Overlay Texture" {
Properties {
    _Color ("Tint Color", Color) = (1,1,1,0.5)
    _Intensity ("Intensity", Range(0.0, 2.0)) = 1.0
    _Offset ("Depth Offset", Int) = -1    
    _MainTex("Texture", 2D) = "black" {}
    _FadeAmount("Fade Amount", Float) = 0
    _ZWrite("ZWrite", Int) = 0
    _SrcBlend("Src Blend", Int) = 5
    _DstBlend("Dst Blend", Int) = 10
}
SubShader {
    Tags {
        "Queue"="Geometry+230"
        "RenderType"="Transparent"
    }
    
		Offset [_Offset], [_Offset]
		Cull Off			
		Lighting Off		
		ZWrite [_ZWrite]			
		ZTest Always		
		Fog { Mode Off }
        Blend [_SrcBlend] [_DstBlend]
		
		Pass {
			CGPROGRAM						
			#pragma target 2.0				
			#pragma fragment frag			
			#pragma vertex vert				
			#pragma multi_compile _ TGS_TEX_HIGHLIGHT_ADDITIVE TGS_TEX_HIGHLIGHT_MULTIPLY TGS_TEX_HIGHLIGHT_COLOR TGS_TEX_HIGHLIGHT_SCALE TGS_TEX_DUAL_COLORS
			#include "UnityCG.cginc"		

			sampler2D _MainTex;
			fixed4 _Color, _Color2;								
			fixed _Intensity, _FadeAmount, _Scale;

			struct AppData {
				float4 vertex : POSITION;	
				float2 texcoord: TEXCOORD0;			
			};

			struct VertexToFragment {
				float4 pos : SV_POSITION;	
				float2 uv: TEXCOORD0;			
			};

			VertexToFragment vert(AppData v) {
				VertexToFragment o;						
				UNITY_INITIALIZE_OUTPUT(AppData,o);				
				o.pos = UnityObjectToClipPos(v.vertex);	
				o.uv = v.texcoord;
				return o;								
			}

			fixed4 frag(VertexToFragment i) : SV_Target {
                fixed4 color = _Color * _Intensity;
                #if TGS_TEX_HIGHLIGHT_ADDITIVE
                    fixed4 pixel = tex2D(_MainTex, i.uv);
                    color.rgb = lerp(pixel.rgb + color.rgb, pixel.rgb, _FadeAmount) * pixel.aaa;
                    color.a = 1.0 - pixel.a;
                #elif TGS_TEX_HIGHLIGHT_MULTIPLY
                    fixed4 pixel = tex2D(_MainTex, i.uv);
                    color.rgb = pixel.rgb * lerp(color.rgb, 1.0, _FadeAmount) * pixel.aaa;
                    color.a = 1.0 - pixel.a;
                #elif TGS_TEX_HIGHLIGHT_COLOR
                    fixed4 pixel = tex2D(_MainTex, i.uv);
                    color.rgb = lerp(pixel.rgb, color.rgb, _FadeAmount) * pixel.aaa;
                    color.a = 1.0 - pixel.a;
                #elif TGS_TEX_HIGHLIGHT_SCALE
                    fixed4 pixel = tex2D(_MainTex, 0.5 + (i.uv - 0.5) * _Scale);
                    color.rgb = pixel.rgb * lerp(color.rgb, 1.0, _FadeAmount) * pixel.aaa;
                    color.a = 1.0 - pixel.a;
                #elif TGS_TEX_DUAL_COLORS
                    fixed4 pixel = tex2D(_MainTex, i.uv);
                    color.rgb = lerp(color.rgb * color.a, pixel.rgb * pixel.a, _FadeAmount);
                    color.a = 1.0 - color.a;
                    color = lerp(_Color2, color, _FadeAmount);
                #else
                    fixed4 pixel = tex2D(_MainTex, i.uv);
                    color.rgb = lerp(color.rgb * color.a, pixel.rgb * pixel.a, _FadeAmount);
                    color.a = 1.0 - color.a;
                #endif
                return color;
			}

			ENDCG		

		}
	}	
}
