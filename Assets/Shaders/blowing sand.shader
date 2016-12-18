// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32716,y:32678,varname:node_4795,prsc:2|emission-2393-OUT,alpha-797-A,clip-798-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32598,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ffa9c02760c2b4e8eb9814ec06c4b05b,ntxv:2,isnm:False|UVIN-679-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32762,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32913,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:0.409;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33072,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32495,y:32983,varname:node_798,prsc:2|A-9248-OUT,B-1761-R,C-797-A;n:type:ShaderForge.SFN_TexCoord,id:679,x:32014,y:32598,varname:node_679,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:1761,x:32702,y:33217,ptovrint:False,ptlb:node_1761,ptin:_node_1761,varname:node_1761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8117-UVOUT;n:type:ShaderForge.SFN_Time,id:754,x:31932,y:33148,varname:node_754,prsc:2;n:type:ShaderForge.SFN_Slider,id:7503,x:31660,y:33318,ptovrint:False,ptlb:node_7503,ptin:_node_7503,varname:node_7503,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9401709,max:1;n:type:ShaderForge.SFN_OneMinus,id:7426,x:31982,y:33318,varname:node_7426,prsc:2|IN-7503-OUT;n:type:ShaderForge.SFN_Vector1,id:6333,x:31982,y:33500,varname:node_6333,prsc:2,v1:100;n:type:ShaderForge.SFN_Multiply,id:9623,x:32173,y:33389,varname:node_9623,prsc:2|A-7426-OUT,B-6333-OUT;n:type:ShaderForge.SFN_Divide,id:8184,x:32340,y:33305,varname:node_8184,prsc:2|A-754-T,B-9623-OUT;n:type:ShaderForge.SFN_Panner,id:8117,x:32527,y:33224,varname:node_8117,prsc:2,spu:1,spv:1|UVIN-2372-UVOUT,DIST-8184-OUT;n:type:ShaderForge.SFN_TexCoord,id:2372,x:32267,y:33155,varname:node_2372,prsc:2,uv:0;proporder:6074-797-1761-7503;pass:END;sub:END;*/

Shader "Shader Forge/blowing sand" {
    Properties {
        _MainTex ("MainTex", 2D) = "black" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,0.409)
        _node_1761 ("node_1761", 2D) = "white" {}
        _node_7503 ("node_7503", Range(0, 1)) = 0.9401709
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _node_1761; uniform float4 _node_1761_ST;
            uniform float _node_7503;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float node_9248 = 2.0;
                float4 node_754 = _Time + _TimeEditor;
                float2 node_8117 = (i.uv0+(node_754.g/((1.0 - _node_7503)*100.0))*float2(1,1));
                float4 _node_1761_var = tex2D(_node_1761,TRANSFORM_TEX(node_8117, _node_1761));
                clip((node_9248*_node_1761_var.r*_TintColor.a) - 0.5);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*node_9248);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_TintColor.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
