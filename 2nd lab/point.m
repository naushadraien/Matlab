classdef point
    properties
    x;y;
    end

   methods 
       function obj=point(limit) %function 
           obj.x = rand()*limit;
           obj.y = rand()*limit; %where limit is multiplied with random to set the limit
       end
    end

end