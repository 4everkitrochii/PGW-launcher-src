Shader "Hidden/Unlit/Text 3" {
Properties {
 _MainTex ("Alpha (A)", 2D) = "white" {}
}
SubShader { 
 LOD 200
 Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
 Pass {
  Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
  ZWrite Off
  Cull Off
  Blend SrcAlpha OneMinusSrcAlpha
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
						abs r0.xy, t1
						add r0.xy, -r0, c3.x
						mul r0.xy, r0, c0
						min r1.w, r0.y, r0.x
						abs r0.x, t1.z
						abs r0.y, t1.w
						add r0.xy, -r0, c3.x
						mul r0.xy, r0, c1
						min r1.x, r0.y, r0.x
						min r0.x, r1.x, r1.w
						abs r0.yz, t2.zxyw
						add r0.yz, -r0, c3.x
						mul r0.yz, r0, c2.zxyw
						min r1.x, r0.z, r0.y
						min_sat r2.w, r1.x, r0.x
						mul_pp r0.x, r0.w, v0.w
						mul_pp r0.w, r2.w, r0.x
						mov_pp r0.xyz, v0
						mov_pp oC0, r0
						
						"
}
}
 }
}
Fallback "Unlit/Text"
}