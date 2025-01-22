Shader "Custom/PGW/UnlitGreyScale" {
Properties {
 _MainTex ("Texture", 2D) = "white" {}
 _EffectAmount ("Effect Amount", Range(0,1)) = 1
}
SubShader { 
 LOD 200
 Tags { "RenderType"="Opaque" }
 Pass {
  Tags { "RenderType"="Opaque" }
 }
}
}