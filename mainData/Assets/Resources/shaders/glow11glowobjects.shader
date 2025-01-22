Shader "Hidden/Glow 11/GlowObjects" {
Properties {
 _GlowStrength ("Glow Strength", Float) = 1
 _GlowColor ("Glow Color", Color) = (1,1,1,1)
}
SubShader { 
 LOD 200
 Tags { "RenderType"="Opaque" }
 Pass {
  Tags { "RenderType"="Opaque" }
 }
}
}