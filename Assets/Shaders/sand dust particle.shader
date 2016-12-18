// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:32716,y:32678,varname:node_4795,prsc:2|emission-2393-OUT,alpha-798-OUT,clip-9153-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f2a502994e2604911873f13e7260f6ad,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5808823,c2:0.5808823,c3:0.5808823,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33081,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32495,y:32923,varname:node_798,prsc:2|A-8402-OUT,B-2053-A,C-797-A;n:type:ShaderForge.SFN_Tex2d,id:1726,x:32149,y:33179,ptovrint:False,ptlb:node_1726,ptin:_node_1726,varname:node_1726,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-7884-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2542,x:31446,y:33439,varname:node_2542,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:9897,x:31655,y:33439,varname:node_9897,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2542-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1836,x:31846,y:33439,varname:node_1836,prsc:2|A-9897-OUT,B-9897-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4437,x:32045,y:33439,varname:node_4437,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1836-OUT;n:type:ShaderForge.SFN_Add,id:7377,x:32237,y:33459,varname:node_7377,prsc:2|A-4437-R,B-4437-G;n:type:ShaderForge.SFN_Multiply,id:8402,x:32613,y:33231,varname:node_8402,prsc:2|A-4002-OUT,B-8667-OUT;n:type:ShaderForge.SFN_OneMinus,id:8667,x:32310,y:33648,varname:node_8667,prsc:2|IN-7377-OUT;n:type:ShaderForge.SFN_Panner,id:7884,x:32852,y:33569,varname:node_7884,prsc:2,spu:1,spv:1|UVIN-7344-UVOUT,DIST-9932-OUT;n:type:ShaderForge.SFN_Slider,id:1419,x:32446,y:33836,ptovrint:False,ptlb:node_1419,ptin:_node_1419,varname:node_1419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8586113,max:1;n:type:ShaderForge.SFN_Multiply,id:5169,x:32808,y:33830,varname:node_5169,prsc:2|A-1419-OUT,B-7185-OUT;n:type:ShaderForge.SFN_Vector1,id:7185,x:32587,y:33915,varname:node_7185,prsc:2,v1:10;n:type:ShaderForge.SFN_TexCoord,id:7344,x:32603,y:33554,varname:node_7344,prsc:2,uv:0;n:type:ShaderForge.SFN_Subtract,id:4002,x:32402,y:33231,varname:node_4002,prsc:2|A-1726-R,B-5102-OUT;n:type:ShaderForge.SFN_Vector1,id:5102,x:32149,y:33334,varname:node_5102,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Time,id:1665,x:32808,y:33981,varname:node_1665,prsc:2;n:type:ShaderForge.SFN_Divide,id:9932,x:33050,y:33866,varname:node_9932,prsc:2|A-2571-XYZ,B-5169-OUT;n:type:ShaderForge.SFN_Tex2d,id:7080,x:32921,y:33268,ptovrint:False,ptlb:node_7080,ptin:_node_7080,varname:node_7080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-7884-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9153,x:33165,y:33242,varname:node_9153,prsc:2|A-7080-B,B-8667-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2571,x:32821,y:34140,varname:node_2571,prsc:2;proporder:6074-797-1726-1419-7080;pass:END;sub:END;*/

Shader "Shader Forge/sand dust particle" {
    Properties {
        _MainTex ("MainTex", 2D) = "black" {}
        _TintColor ("Color", Color) = (0.5808823,0.5808823,0.5808823,1)
        _node_1726 ("node_1726", 2D) = "white" {}
        _node_1419 ("node_1419", Range(0, 1)) = 0.8586113
        _node_7080 ("node_7080", 2D) = "white" {}
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _node_1726; uniform float4 _node_1726_ST;
            uniform float _node_1419;
            uniform sampler2D _node_7080; uniform float4 _node_7080_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_7884 = (i.uv0+(i.posWorld.rgb/(_node_1419*10.0))*float2(1,1));
                float4 _node_7080_var = tex2D(_node_7080,TRANSFORM_TEX(node_7884, _node_7080));
                float2 node_9897 = (i.uv0*2.0+-1.0);
                float2 node_4437 = (node_9897*node_9897).rg;
                float node_8667 = (1.0 - (node_4437.r+node_4437.g));
                clip((_node_7080_var.b*node_8667) - 0.5);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0);
                float3 finalColor = emissive;
                float4 _node_1726_var = tex2D(_node_1726,TRANSFORM_TEX(node_7884, _node_1726));
                fixed4 finalRGBA = fixed4(finalColor,(((_node_1726_var.r-0.4)*node_8667)*i.vertexColor.a*_TintColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
