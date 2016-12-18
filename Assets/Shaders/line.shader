// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9453-OUT;n:type:ShaderForge.SFN_Tex2d,id:9555,x:32180,y:32723,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_9555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-4264-UVOUT;n:type:ShaderForge.SFN_Panner,id:4264,x:31966,y:32751,varname:node_4264,prsc:2,spu:-1,spv:1|UVIN-8381-OUT,DIST-8880-OUT;n:type:ShaderForge.SFN_TexCoord,id:517,x:31593,y:32673,varname:node_517,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:5449,x:31358,y:32827,varname:node_5449,prsc:2;n:type:ShaderForge.SFN_Slider,id:8067,x:31247,y:33034,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_8067,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8974359,max:1;n:type:ShaderForge.SFN_OneMinus,id:3003,x:31593,y:33037,varname:node_3003,prsc:2|IN-8067-OUT;n:type:ShaderForge.SFN_Vector1,id:6834,x:31593,y:33211,varname:node_6834,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:780,x:31790,y:33037,varname:node_780,prsc:2|A-3003-OUT,B-6834-OUT;n:type:ShaderForge.SFN_Divide,id:2406,x:31790,y:32887,varname:node_2406,prsc:2|A-276-OUT,B-780-OUT;n:type:ShaderForge.SFN_Rotator,id:297,x:32036,y:32525,varname:node_297,prsc:2|UVIN-517-UVOUT,ANG-8441-OUT;n:type:ShaderForge.SFN_Slider,id:2912,x:31380,y:32513,ptovrint:False,ptlb:angle,ptin:_angle,varname:node_2912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6050426,max:1;n:type:ShaderForge.SFN_Multiply,id:8441,x:31761,y:32442,varname:node_8441,prsc:2|A-2912-OUT,B-1024-OUT;n:type:ShaderForge.SFN_Vector1,id:1024,x:31537,y:32585,varname:node_1024,prsc:2,v1:90;n:type:ShaderForge.SFN_Round,id:1225,x:32383,y:32640,varname:node_1225,prsc:2|IN-9555-G;n:type:ShaderForge.SFN_Multiply,id:276,x:31593,y:32845,varname:node_276,prsc:2|A-517-U,B-5449-T;n:type:ShaderForge.SFN_Time,id:2665,x:31758,y:33315,varname:node_2665,prsc:2;n:type:ShaderForge.SFN_Add,id:8655,x:31958,y:33376,varname:node_8655,prsc:2|A-2517-X,B-2517-Y,C-2517-Z,D-2665-T;n:type:ShaderForge.SFN_FragmentPosition,id:2517,x:31758,y:33445,varname:node_2517,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8880,x:32361,y:33376,varname:node_8880,prsc:2|A-8655-OUT,B-2414-OUT;n:type:ShaderForge.SFN_Vector1,id:2414,x:32161,y:33522,varname:node_2414,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Append,id:8381,x:32552,y:33376,varname:node_8381,prsc:2|A-8880-OUT,B-8880-OUT;n:type:ShaderForge.SFN_Multiply,id:9453,x:32474,y:32895,varname:node_9453,prsc:2|A-1225-OUT,B-2665-T;proporder:9555-8067-2912;pass:END;sub:END;*/

Shader "Shader Forge/line" {
    Properties {
        _texture ("texture", 2D) = "white" {}
        _speed ("speed", Range(0, 1)) = 0.8974359
        _angle ("angle", Range(0, 1)) = 0.6050426
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2665 = _Time + _TimeEditor;
                float node_8880 = ((i.posWorld.r+i.posWorld.g+i.posWorld.b+node_2665.g)*0.5);
                float2 node_4264 = (float2(node_8880,node_8880)+node_8880*float2(-1,1));
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(node_4264, _texture));
                float node_9453 = (round(_texture_var.g)*node_2665.g);
                float3 emissive = float3(node_9453,node_9453,node_9453);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
