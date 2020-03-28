// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "WaterNew"
{
	Properties
	{
		_ShallowColor("ShallowColor", Color) = (0.02000435,0.5441177,0.457368,0)
		_DeepColor("DeepColor", Color) = (0.02000431,0.2621809,0.5441177,0)
		_WaterNormal("WaterNormal", 2D) = "bump" {}
		_Distortion("Distortion", Float) = 0
		_WaterDepth("Water Depth", Float) = 0
		_WaterFallOff("WaterFallOff", Float) = 0
		_AmbientOcclusion("AmbientOcclusion", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" }
		Cull Back
		GrabPass{ }
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityCG.cginc"
		#pragma target 3.0
		#pragma surface surf Standard alpha:fade keepalpha noshadow 
		struct Input
		{
			float2 uv_texcoord;
			float4 screenPos;
		};

		uniform sampler2D _WaterNormal;
		uniform float4 _ShallowColor;
		uniform float4 _DeepColor;
		uniform sampler2D _CameraDepthTexture;
		uniform float _WaterDepth;
		uniform float _WaterFallOff;
		uniform sampler2D _GrabTexture;
		uniform float _Distortion;
		uniform float _AmbientOcclusion;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 panner9 = ( 1.0 * _Time.y * float2( 0,0 ) + i.uv_texcoord);
			float2 panner10 = ( 1.0 * _Time.y * float2( 0,0 ) + i.uv_texcoord);
			float3 temp_output_14_0 = BlendNormals( tex2D( _WaterNormal, panner9 ).rgb , UnpackScaleNormal( tex2D( _WaterNormal, panner10 ), 0.5 ) );
			o.Normal = temp_output_14_0;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float eyeDepth2 = LinearEyeDepth(UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture,UNITY_PROJ_COORD( ase_screenPos ))));
			float temp_output_27_0 = saturate( pow( ( abs( ( eyeDepth2 - ase_screenPos.w ) ) + _WaterDepth ) , _WaterFallOff ) );
			float4 lerpResult7 = lerp( _ShallowColor , _DeepColor , temp_output_27_0);
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 appendResult17 = (float2(ase_screenPosNorm.x , ase_screenPosNorm.y));
			float4 screenColor16 = tex2D( _GrabTexture, ( float3( ( appendResult17 / ase_screenPosNorm.w ) ,  0.0 ) + ( _Distortion * temp_output_14_0 ) ).xy );
			float4 lerpResult22 = lerp( lerpResult7 , screenColor16 , temp_output_27_0);
			o.Albedo = lerpResult22.rgb;
			o.Occlusion = _AmbientOcclusion;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=16200
298;156;1557;702;693.3111;174.1465;1;True;True
Node;AmplifyShaderEditor.ScreenPosInputsNode;1;-2035.951,341.7542;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;8;-1942.89,-824.1891;Float;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenDepthNode;2;-1738.929,246.0289;Float;False;0;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;13;-1513.829,-515.3575;Float;False;Constant;_Float0;Float 0;3;0;Create;True;0;0;False;0;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;10;-1583.226,-703.1811;Float;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;9;-1578.184,-874.609;Float;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;3;-1510.359,421.6165;Float;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;11;-1245.829,-666.3577;Float;True;Property;_WaterNormal;WaterNormal;2;0;Create;True;0;0;False;0;dd2fd2df93418444c8e280f1d34deeb5;dd2fd2df93418444c8e280f1d34deeb5;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenPosInputsNode;15;-1011.461,-1228.105;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;12;-1276.829,-943.3577;Float;True;Property;_TextureSample1;Texture Sample 1;2;0;Create;True;0;0;False;0;None;None;True;0;False;white;Auto;False;Instance;11;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;23;-1237.958,459.0904;Float;False;Property;_WaterDepth;Water Depth;4;0;Create;True;0;0;False;0;0;0.9;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;4;-1373.17,399.4784;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;14;-805.1148,-728.9887;Float;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;17;-721.2443,-1240.829;Float;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;19;-805.2346,-968.7652;Float;False;Property;_Distortion;Distortion;3;0;Create;True;0;0;False;0;0;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;24;-1159.958,284.0904;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;26;-1060.958,484.0904;Float;False;Property;_WaterFallOff;WaterFallOff;5;0;Create;True;0;0;False;0;0;-3.6;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;18;-558.1768,-1151.309;Float;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;20;-564.2822,-896.7598;Float;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;25;-1008.958,298.0904;Float;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;21;-381.2821,-1025.76;Float;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;6;-1457.153,-129.1105;Float;False;Property;_ShallowColor;ShallowColor;0;0;Create;True;0;0;False;0;0.02000435,0.5441177,0.457368,0;0.02000435,0.5441177,0.457368,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;27;-935.9583,202.0904;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;5;-1441.29,54.52087;Float;False;Property;_DeepColor;DeepColor;1;0;Create;True;0;0;False;0;0.02000431,0.2621809,0.5441177,0;0.02000431,0.2621809,0.5441177,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;7;-782.5054,59.69078;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;16;-202.6566,-998.2426;Float;False;Global;_GrabScreen0;Grab Screen 0;3;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;22;69.015,-324.9121;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;28;-75.3111,175.8535;Float;False;Property;_AmbientOcclusion;AmbientOcclusion;6;0;Create;True;0;0;False;0;0;0.6;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;310,-20;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;WaterNew;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Transparent;0.5;True;False;0;False;Transparent;;Transparent;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;False;2;5;False;-1;10;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;2;0;1;0
WireConnection;10;0;8;0
WireConnection;9;0;8;0
WireConnection;3;0;2;0
WireConnection;3;1;1;4
WireConnection;11;1;10;0
WireConnection;11;5;13;0
WireConnection;12;1;9;0
WireConnection;4;0;3;0
WireConnection;14;0;12;0
WireConnection;14;1;11;0
WireConnection;17;0;15;1
WireConnection;17;1;15;2
WireConnection;24;0;4;0
WireConnection;24;1;23;0
WireConnection;18;0;17;0
WireConnection;18;1;15;4
WireConnection;20;0;19;0
WireConnection;20;1;14;0
WireConnection;25;0;24;0
WireConnection;25;1;26;0
WireConnection;21;0;18;0
WireConnection;21;1;20;0
WireConnection;27;0;25;0
WireConnection;7;0;6;0
WireConnection;7;1;5;0
WireConnection;7;2;27;0
WireConnection;16;0;21;0
WireConnection;22;0;7;0
WireConnection;22;1;16;0
WireConnection;22;2;27;0
WireConnection;0;0;22;0
WireConnection;0;1;14;0
WireConnection;0;5;28;0
ASEEND*/
//CHKSM=514BBCABF7E48644D751EB304E2E21187BF857AF