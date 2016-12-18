// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-8093-RGB;n:type:ShaderForge.SFN_Color,id:7241,x:32131,y:32700,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_ObjectPosition,id:4222,x:31497,y:33188,varname:node_4222,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:4566,x:31707,y:33092,varname:node_4566,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:7668,x:31497,y:32815,varname:node_7668,prsc:2,v1:2;n:type:ShaderForge.SFN_FragmentPosition,id:6305,x:31497,y:32915,varname:node_6305,prsc:2;n:type:ShaderForge.SFN_Time,id:2052,x:31213,y:33052,varname:node_2052,prsc:2;n:type:ShaderForge.SFN_Add,id:764,x:31707,y:32937,varname:node_764,prsc:2|A-6305-X,B-8317-OUT,C-4222-Y;n:type:ShaderForge.SFN_Multiply,id:5477,x:31932,y:32944,varname:node_5477,prsc:2|A-764-OUT,B-4566-UVOUT;n:type:ShaderForge.SFN_Sin,id:3557,x:31707,y:32754,varname:node_3557,prsc:2|IN-764-OUT;n:type:ShaderForge.SFN_Tex2d,id:8093,x:32142,y:32944,ptovrint:False,ptlb:node_8093,ptin:_node_8093,varname:node_8093,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2c4829561f53f471b81bb7541cdef074,ntxv:0,isnm:False|UVIN-5477-OUT;n:type:ShaderForge.SFN_Divide,id:8317,x:31497,y:33052,varname:node_8317,prsc:2|A-2052-T,B-5128-OUT;n:type:ShaderForge.SFN_Slider,id:5798,x:30945,y:33215,ptovrint:False,ptlb:node_5798,ptin:_node_5798,varname:node_5798,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4188035,max:1;n:type:ShaderForge.SFN_Vector1,id:624,x:31102,y:33292,varname:node_624,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:5128,x:31297,y:33212,varname:node_5128,prsc:2|A-5798-OUT,B-624-OUT;proporder:7241-8093-5798;pass:END;sub:END;*/

Shader "Shader Forge/line 2" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_8093 ("node_8093", 2D) = "white" {}
        _node_5798 ("node_5798", Range(0, 1)) = 0.4188035
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
            uniform sampler2D _node_8093; uniform float4 _node_8093_ST;
            uniform float _node_5798;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float4 node_2052 = _Time + _TimeEditor;
                float node_764 = (i.posWorld.r+(node_2052.g/(_node_5798*10.0))+objPos.g);
                float2 node_5477 = (node_764*i.uv0);
                float4 _node_8093_var = tex2D(_node_8093,TRANSFORM_TEX(node_5477, _node_8093));
                float3 emissive = _node_8093_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
