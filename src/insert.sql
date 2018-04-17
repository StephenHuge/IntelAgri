insert into intelagri.agri_data_temp
( imei,airTemperature,batteryLevel,gageHeight,
rainfall,relativeHumidity,serverTime,soilMoisture,
tacq
)
 values(  
 '123123',     '322',     '12',    
 '21',     '32',  '32'  ,
 '2018-04-08 15:33:22',   '12',  
 '2018-04-08 15:33:22' )

 
 insert into intelagri.agri_data_radiation(
 batteryLevel,currentSolarRadiationIntensity, 
     cumulativeSolarRadiationIntensity,imei,   
       meteorologicalEquipmentStatus,serverTime,tacq ) 
       values(  '43',     '12',     '33',     '123213', 
           '234',     '2018-04-08 15:33:22',     '2018-04-08 15:33:22' )
