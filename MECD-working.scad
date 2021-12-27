


include <OPSC-base.scad>




OPSCbuild(shift=200);

// MECDxylophone
// Description
module draw1(){
    color="red";
    BCD=15.5;
    depth=20;
    difference(){
        union(){
            oi("cylinder",rad=20/2,depth=depth);
        }
        oi("cylinder",rad=10/2,depth=depth);
        
        oi("capscrewM3",x=BCD/2,z=-depth,rotY=180);
        oi("holeM3",x=BCD/2);
        oi("capscrewM3",x=-BCD/2,z=-depth,rotY=180);
        oi("holeM3",x=-BCD/2);
        //mallet opening
        //littleSlot
        malletD = 5;
        xx = 0;
        yy = 0;
        zz = -10;
        translate([xx,yy,zz]){
            hull(){
                zShift=-4;
                oi("cylinder",rad=malletD/2,depth=10,rotX=90,z=1+zShift);
                oi("cylinder",rad=malletD/2,depth=10,rotX=90,z=-1+zShift);
            }
            hull(){
                oi("cylinder",rad=malletD/2,y=-10,depth=10,rotX=90,z=5);
                oi("cylinder",rad=malletD/2,y=-10,depth=10,rotX=90,z=-5);
            }
        }
        
    }
    
}

// ZZZZ
// Description
module draw2(){
    color="orange";
    
}

// ZZZZ
// Description
module draw3(){
    color="yellow";
    
}

// ZZZZ
// Description
module draw4(){
    color="green";
    
}

// ZZZZ
// Description
module draw5(){
    color="blue";
    
}

// ZZZZ
// Description
module draw6(){
    color="purple";
    
}

// ZZZZ
// Description
module draw7(){
    color="gray";
    
}

// ZZZZ
// Description
module draw8(){
    color="white";
}

// ZZZZ
// Description
module draw9(){
    color="black";
}

// ZZZZ
// Description
module draw10(){
    color="pink";
}



module test(){
    //OPSCInsert("OSPCHole",100,0,0);
    //OPSCInsert("holeM3");
    //OPSCInsert("OPSCHoleSlot",x=50,rad=5,rotZ=45);
    //OPSCInsert("M3SocketHeadFull",0,0,0);
    //OPSCInsert("M3SocketHead",0,0,0,length=25);
    //OPSCInsert("cubeRounded",width=20,height=20,depth=6,rad=5);
   //OPSCInsert("cylinder",rad=20,depth=6); //OPSCInsert("cube",width=20,height=20,depth=6,rad=5,alpha=0.3,color="red");
    
}

module ZZZZinsert(item,x=0,y=0,z=0,ex=0,length=0,rotX=0,rotY=0,rotZ=0,width=0,height=0,depth=0,rad=0,color="gray",alpha=1,clearance=0,offset=0){
    color(color,alpha){
            translate([x,y,z]){
                rotate([rotX,rotY,rotZ]){    
                    if(item=="OPSCtest"){
                }
            }
        }
    }
}
