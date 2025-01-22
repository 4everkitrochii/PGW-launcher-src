Shader "Custom/PGW/RimLightTransparent" {
Properties {
 _MainTex ("Base (RGB)", 2D) = "white" {}
 _InnerColor ("Inner Color", Color) = (1,1,1,1)
 _RimColor ("Rim Color", Color) = (0.26,0.19,0.16,0)
 _RimPower ("Rim Power", Range(0.5,8)) = 3
}
SubShader { 
 LOD 200
 Tags { "RenderType"="Opaque" }
 Pass {
  Tags { "RenderType"="Opaque" }
 }
}
}