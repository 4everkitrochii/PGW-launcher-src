Shader "Hidden/Unlit/Premultiplied Colored 3" {
Properties {
 _MainTex ("Base (RGB), Alpha (A)", 2D) = "black" {}
}
SubShader { 
 LOD 200
 Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
 Pass {
  Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
  ZWrite Off
  Cull Off
  Blend One OneMinusSrcAlpha
  ColorMask RGB
  Offset -1, -1
Program "vp" {
SubProgram "d3d9 " {
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Vector 6 [_ClipArgs1]
Vector 8 [_ClipArgs2]
Vector 4 [_ClipRange0]
Vector 5 [_ClipRange1]
Vector 7 [_ClipRange2]
"vs_2_0
						dcl_position v0
						dcl_color v1
						dcl_texcoord v2
						dp4 oPos.x, c0, v0
						dp4 oPos.y, c1, v0
						dp4 oPos.z, c2, v0
						dp4 oPos.w, c3, v0
						mad oT1.xy, v0, c4.zwzw, c4
						mul r0.xyz, v0.yxyw, c6.zzww
						mad r1.z, v0.x, c6.w, -r0.x
						add r1.w, r0.z, r0.y
						mad oT1.zw, r1, c5, c5.xyxy
						mul r0.xyz, v0.yxyw, c8.zzww
						mad r1.x, v0.x, c8.w, -r0.x
						add r1.y, r0.z, r0.y
						mad oT2.xy, r1, c7.zwzw, c7
						mov oD0, v1
						mov oT0.xy, v2
						
						"
}
}
Program "fp" {
SubProgram "d3d9 " {
Vector 0 [_ClipArgs0]
Vector 1 [_ClipArgs1]
Vector 2 [_ClipArgs2]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
						def c3, 1, 0, 0, 0
						dcl v0
						dcl t0.xy
						dcl t1
						dcl t2.xy
						dcl_2d s0
						texld r0, t0, s0
						abs r1.xy, t1
						add r1.xy, -r1, c3.x
						mul r1.xy, r1, c0
						min r2.w, r1.y, r1.x
						abs r1.x, t1.z
						abs r1.y, t1.w
						add r1.xy, -r1, c3.x
						mul r1.xy, r1, c1
						min r2.x, r1.y, r1.x
						min r1.x, r2.x, r2.w
						abs r1.yz, t2.zxyw
						add r1.yz, -r1, c3.x
						mul r1.yz, r1, c2.zxyw
						min r2.x, r1.z, r1.y
						min_sat r3.w, r2.x, r1.x
						mul_pp r0, r0, v0
						mul_pp r1.w, r3.w, r0.w
						mul_pp r1.xyz, r0, r3.w
						mov_pp oC0, r1
						
						"
}
}
 }
}
Fallback "Unlit/Premultiplied Colored"
}