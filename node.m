classdef node < handle
    properties 
        next 
        prev 
        data
    end 
    methods 
        function this = node(inVal) 
           if nargin==0
              ...
           else
            this.data = inVal; 
           end
        end 
    end 
end 
