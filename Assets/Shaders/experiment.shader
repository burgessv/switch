// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33050,y:32753,varname:node_3138,prsc:2|emission-4206-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32055,y:32712,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.2,c3:0.1882353,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7086,x:32079,y:32988,ptovrint:False,ptlb:node_7086,ptin:_node_7086,varname:node_7086,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0618dfa093853480ba0c6d6cb2438231,ntxv:0,isnm:False|UVIN-4389-OUT;n:type:ShaderForge.SFN_Lerp,id:4206,x:32422,y:32951,varname:node_4206,prsc:2|A-7241-RGB,B-7086-RGB,T-8616-OUT;n:type:ShaderForge.SFN_Tex2d,id:7374,x:32079,y:33192,ptovrint:False,ptlb:node_7374,ptin:_node_7374,varname:node_7374,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ffa9c02760c2b4e8eb9814ec06c4b05b,ntxv:2,isnm:False|UVIN-2981-OUT;n:type:ShaderForge.SFN_VertexColor,id:6333,x:31580,y:33286,varname:node_6333,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:1594,x:31130,y:32873,varname:node_1594,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4389,x:31839,y:32984,varname:node_4389,prsc:2|A-2981-OUT,B-8459-OUT;n:type:ShaderForge.SFN_Vector1,id:8459,x:31570,y:33192,varname:node_8459,prsc:2,v1:150;n:type:ShaderForge.SFN_Time,id:1296,x:31130,y:33129,varname:node_1296,prsc:2;n:type:ShaderForge.SFN_Add,id:2981,x:31599,y:32984,varname:node_2981,prsc:2|A-7192-UVOUT,B-3482-OUT;n:type:ShaderForge.SFN_Slider,id:1051,x:30790,y:33300,ptovrint:False,ptlb:node_1051,ptin:_node_1051,varname:node_1051,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3589744,max:1;n:type:ShaderForge.SFN_Vector1,id:7573,x:31116,y:33420,varname:node_7573,prsc:2,v1:200;n:type:ShaderForge.SFN_Multiply,id:3091,x:31281,y:33325,varname:node_3091,prsc:2|A-5706-OUT,B-7573-OUT;n:type:ShaderForge.SFN_Divide,id:3482,x:31347,y:33158,varname:node_3482,prsc:2|A-1296-T,B-3091-OUT;n:type:ShaderForge.SFN_OneMinus,id:5706,x:31116,y:33273,varname:node_5706,prsc:2|IN-1051-OUT;n:type:ShaderForge.SFN_Rotator,id:7192,x:31501,y:32570,varname:node_7192,prsc:2|UVIN-1594-UVOUT,ANG-4335-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4335,x:31292,y:32734,ptovrint:False,ptlb:node_4335,ptin:_node_4335,varname:node_4335,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4.19;n:type:ShaderForge.SFN_Color,id:8242,x:32307,y:32712,ptovrint:False,ptlb:node_8242,ptin:_node_8242,varname:node_8242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.5034485,c3:1,c4:0.2;n:type:ShaderForge.SFN_Posterize,id:5690,x:32466,y:33291,varname:node_5690,prsc:2|IN-7374-RGB,STPS-7924-OUT;n:type:ShaderForge.SFN_Vector1,id:7924,x:32437,y:33457,varname:node_7924,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:8616,x:32773,y:33288,varname:node_8616,prsc:2|A-5690-OUT,B-4475-RGB;n:type:ShaderForge.SFN_Color,id:4475,x:32620,y:33504,ptovrint:False,ptlb:node_4475,ptin:_node_4475,varname:node_4475,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2198821,c2:0.1500324,c3:0.2720588,c4:1;proporder:7241-7086-7374-1051-4335-8242-4475;pass:END;sub:END;*/

Shader "Shader Forge/experiment" {
    Properties {
        _Color ("Color", Color) = (1,0.2,0.1882353,1)
        _node_7086 ("node_7086", 2D) = "white" {}
        _node_7374 ("node_7374", 2D) = "black" {}
        _node_1051 ("node_1051", Range(0, 1)) = 0.3589744
        _node_4335 ("node_4335", Float ) = 4.19
        _node_8242 ("node_8242", Color) = (0,0.5034485,1,0.2)
        _node_4475 ("node_4475", Color) = (0.2198821,0.1500324,0.2720588,1)
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
            uniform float4 _Color;
            uniform sampler2D _node_7086; uniform float4 _node_7086_ST;
            uniform sampler2D _node_7374; uniform float4 _node_7374_ST;
            uniform float _node_1051;
            uniform float _node_4335;
            uniform float4 _node_4475;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_7192_ang = _node_4335;
                float node_7192_spd = 1.0;
                float node_7192_cos = cos(node_7192_spd*node_7192_ang);
                float node_7192_sin = sin(node_7192_spd*node_7192_ang);
                float2 node_7192_piv = float2(0.5,0.5);
                float2 node_7192 = (mul(i.uv0-node_7192_piv,float2x2( node_7192_cos, -node_7192_sin, node_7192_sin, node_7192_cos))+node_7192_piv);
                float4 node_1296 = _Time + _TimeEditor;
                float2 node_2981 = (node_7192+(node_1296.g/((1.0 - _node_1051)*200.0)));
                float2 node_4389 = (node_2981*150.0);
                float4 _node_7086_var = tex2D(_node_7086,TRANSFORM_TEX(node_4389, _node_7086));
                float4 _node_7374_var = tex2D(_node_7374,TRANSFORM_TEX(node_2981, _node_7374));
                float node_7924 = 2.0;
                float3 emissive = lerp(_Color.rgb,_node_7086_var.rgb,(floor(_node_7374_var.rgb * node_7924) / (node_7924 - 1)*_node_4475.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
