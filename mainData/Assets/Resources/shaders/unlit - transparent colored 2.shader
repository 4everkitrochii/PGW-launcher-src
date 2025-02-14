Shader "Hidden/Unlit/Transparent Colored 2" {
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
  Blend SrcAlpha OneMinusSrcAlpha
  ColorMask RGB
  Offset -1, -1
Program "vp" {
SubProgram "d3d9 " {
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Vector 6 [_ClipArgs1]
Vector 4 [_ClipRange0]
Vector 5 [_ClipRange1]
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
						mov oD0, v1
						mov oT0.xy, v2
						
						"
}
}
Program "fp" {
SubProgram "d3d9 " {
Vector 0 [_ClipArgs0]
Vector 1 [_ClipArgs1]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
						def c2, 1, 0, 0, 0
						dcl v0
						dcl t0.xy
						dcl t1
						dcl_2d s0
						texld r0, t0, s0
						abs r1.xy, t1
						add r1.xy, -r1, c2.x
						mul r1.xy, r1, c0
						min r2.w, r1.y, r1.x
						abs r1.x, t1.z
						abs r1.y, t1.w
						add r1.xy, -r1, c2.x
						mul r1.xy, r1, c1
						min r2.x, r1.y, r1.x
						min_sat r1.x, r2.x, r2.w
						mul_pp r0, r0, v0
						mul_pp r0.w, r1.x, r0.w
						mov_pp oC0, r0
						
						"
}
}
 }
}
SubShader { 
 LOD 100
 Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
 Pass {
  Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
  ZWrite Off
  Cull Off
  Blend SrcAlpha OneMinusSrcAlpha
  ColorMask RGB
Program "vp" {
SubProgram "d3d9 " {
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Vector 4 [_MainTex_ST]
"vs_2_0
						def c5, 0, 1, 0, 0
						dcl_position v0
						dcl_color v1
						dcl_texcoord v2
						max r0, v1, c5.x
						min oD0, r0, c5.y
						mad oT0.xy, v2, c4, c4.zwzw
						mad r0, v0.xyzx, c5.yyyx, c5.xxxy
						dp4 oPos.x, c0, r0
						dp4 oPos.y, c1, r0
						dp4 oPos.z, c2, r0
						dp4 oPos.w, c3, r0
						
						"
}
}
Program "fp" {
SubProgram "d3d9 " {
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
						dcl v0
						dcl t0.xy
						dcl_2d s0
						texld_pp r0, t0, s0
						mul_pp r0, r0, v0
						mov_pp oC0, r0
						
						"
}
}
 }
}
}