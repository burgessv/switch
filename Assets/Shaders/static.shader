// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-8712-OUT,spec-9914-OUT,gloss-1813-OUT,emission-4873-OUT,custl-1813-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:31921,y:32805,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31921,y:32620,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:7080,x:31809,y:32110,varname:node_7080,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1412,x:32260,y:32213,varname:node_1412,prsc:2|A-7994-OUT,B-535-RGB;n:type:ShaderForge.SFN_Color,id:535,x:31918,y:32415,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:node_535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.2,c3:0.1882353,c4:1;n:type:ShaderForge.SFN_Color,id:341,x:32260,y:32497,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_341,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3161765,c2:0.5189655,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8712,x:32260,y:32336,varname:node_8712,prsc:2|A-7108-V,B-341-RGB;n:type:ShaderForge.SFN_Noise,id:9914,x:32279,y:32649,varname:node_9914,prsc:2|XY-7080-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:7108,x:31660,y:32264,varname:node_7108,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:3746,x:32699,y:32400,varname:node_3746,prsc:2|A-1412-OUT,B-9914-OUT;n:type:ShaderForge.SFN_Slider,id:1023,x:31468,y:32435,ptovrint:False,ptlb:screen position,ptin:_screenposition,varname:node_1023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Subtract,id:4580,x:31691,y:32588,varname:node_4580,prsc:2|A-7108-U,B-1023-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7994,x:32264,y:31942,varname:node_7994,prsc:2|IN-7108-U,IMIN-4125-OUT,IMAX-720-OUT,OMIN-8110-OUT,OMAX-6860-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6860,x:32032,y:32124,ptovrint:False,ptlb:remap max,ptin:_remapmax,varname:node_6860,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:8110,x:32032,y:32041,ptovrint:False,ptlb:remap min,ptin:_remapmin,varname:node_8110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:720,x:32032,y:31954,varname:node_720,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4125,x:32018,y:31873,varname:node_4125,prsc:2,v1:-1;n:type:ShaderForge.SFN_Round,id:4873,x:32159,y:32996,varname:node_4873,prsc:2|IN-9914-OUT;proporder:6665-7736-1813-535-341-1023-6860-8110;pass:END;sub:END;*/

Shader "Shader Forge/gradientSurfaces" {
    Properties {
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Color2 ("Color 2", Color) = (1,0.2,0.1882353,1)
        _Color1 ("Color 1", Color) = (0.3161765,0.5189655,1,1)
        _screenposition ("screen position", Range(0, 1)) = 0
        _remapmax ("remap max", Float ) = -1
        _remapmin ("remap min", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _Gloss;
            uniform float4 _Color1;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float2 node_9914_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_9914_rnd = 4.789*sin(489.123*(node_9914_skew));
                float node_9914 = frac(node_9914_rnd.x*node_9914_rnd.y*(1+node_9914_skew.x));
                float node_4873 = round(node_9914);
                float3 emissive = float3(node_4873,node_4873,node_4873);
                float3 finalColor = emissive + float3(_Gloss,_Gloss,_Gloss);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _Gloss;
            uniform float4 _Color1;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float2 node_9914_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_9914_rnd = 4.789*sin(489.123*(node_9914_skew));
                float node_9914 = frac(node_9914_rnd.x*node_9914_rnd.y*(1+node_9914_skew.x));
                float node_4873 = round(node_9914);
                o.Emission = float3(node_4873,node_4873,node_4873);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
