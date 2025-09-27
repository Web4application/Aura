export function vectorAngle(v1, v2){
    const dot = v1[0]*v2[0] + v1[1]*v2[1] + (v1[2]||0)*(v2[2]||0);
    const norm1 = Math.sqrt(v1.reduce((a,b)=>a+b*b,0));
    const norm2 = Math.sqrt(v2.reduce((a,b)=>a+b*b,0));
    return Math.acos(dot/(norm1*norm2));
}
