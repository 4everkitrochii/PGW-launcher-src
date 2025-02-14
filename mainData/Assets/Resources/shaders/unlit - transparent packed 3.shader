Shader "Hidden/Unlit/Transparent Packed 3" {
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
						def c3, -0.5, 0.50999999, -2.04081631, 1
						dcl v0
						dcl t0.xy
						dcl t1
						dcl t2.xy
						dcl_2d s0
						texld_pp r0, t0, s0
						add_pp r1, v0, c3.x
						frc_pp r2, -r1
						add_sat_pp r1, r1, r2
						mul_pp r0.xy, r0, r1
						add_pp r0.x, r0.y, r0.x
						mad_pp r0.x, r0.z, r1.z, r0.x
						mad_pp r0.x, r0.w, r1.w, r0.x
						mad_pp r1, r1, c3.y, -v0
						mul_sat_pp r1, r1, c3.z
						abs r0.yz, t1.zxyw
						add r0.yz, -r0, c3.w
						mul r0.yz, r0, c0.zxyw
						min r2.x, r0.z, r0.y
						abs r3.x, t1.z
						abs r3.y, t1.w
						add r0.yz, -r3.zxyw, c3.w
						mul r0.yz, r0, c1.zxyw
						min r2.y, r0.z, r0.y
						min r0.y, r2.y, r2.x
						abs r0.zw, t2.wzyx
						add r0.zw, -r0, c3.w
						mul r0.zw, r0, c2.wzyx
						min r2.x, r0.z, r0.w
						min_sat r3.x, r2.x, r0.y
						mul_pp r0.y, r1.w, r3.x
						mul_pp r1.w, r0.x, r0.y
						mov_pp oC0, r1
						
						"
}
}
 }
}
Fallback Off
}