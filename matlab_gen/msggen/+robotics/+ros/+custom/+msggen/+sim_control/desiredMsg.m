classdef desiredMsg < robotics.ros.Message
    %desiredMsg MATLAB implementation of sim_control/desiredMsg
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'sim_control/desiredMsg' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '8014df56ac4f2aaa5d937d7b6aba03cc' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        XDes
        YDes
        VxDes
        VyDes
        VphiDes
        PhiDes
    end
    
    properties (Constant, Hidden)
        PropertyList = {'PhiDes', 'VphiDes', 'VxDes', 'VyDes', 'XDes', 'YDes'} % List of non-constant message properties
        ROSPropertyList = {'phi_des', 'vphi_des', 'vx_des', 'vy_des', 'x_des', 'y_des'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = desiredMsg(msg)
            %desiredMsg Construct the message object desiredMsg
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function xdes = get.XDes(obj)
            %get.XDes Get the value for property XDes
            xdes = double(obj.JavaMessage.getXDes);
        end
        
        function set.XDes(obj, xdes)
            %set.XDes Set the value for property XDes
            validateattributes(xdes, {'numeric'}, {'nonempty', 'scalar'}, 'desiredMsg', 'XDes');
            
            obj.JavaMessage.setXDes(xdes);
        end
        
        function ydes = get.YDes(obj)
            %get.YDes Get the value for property YDes
            ydes = double(obj.JavaMessage.getYDes);
        end
        
        function set.YDes(obj, ydes)
            %set.YDes Set the value for property YDes
            validateattributes(ydes, {'numeric'}, {'nonempty', 'scalar'}, 'desiredMsg', 'YDes');
            
            obj.JavaMessage.setYDes(ydes);
        end
        
        function vxdes = get.VxDes(obj)
            %get.VxDes Get the value for property VxDes
            vxdes = double(obj.JavaMessage.getVxDes);
        end
        
        function set.VxDes(obj, vxdes)
            %set.VxDes Set the value for property VxDes
            validateattributes(vxdes, {'numeric'}, {'nonempty', 'scalar'}, 'desiredMsg', 'VxDes');
            
            obj.JavaMessage.setVxDes(vxdes);
        end
        
        function vydes = get.VyDes(obj)
            %get.VyDes Get the value for property VyDes
            vydes = double(obj.JavaMessage.getVyDes);
        end
        
        function set.VyDes(obj, vydes)
            %set.VyDes Set the value for property VyDes
            validateattributes(vydes, {'numeric'}, {'nonempty', 'scalar'}, 'desiredMsg', 'VyDes');
            
            obj.JavaMessage.setVyDes(vydes);
        end
        
        function vphides = get.VphiDes(obj)
            %get.VphiDes Get the value for property VphiDes
            vphides = double(obj.JavaMessage.getVphiDes);
        end
        
        function set.VphiDes(obj, vphides)
            %set.VphiDes Set the value for property VphiDes
            validateattributes(vphides, {'numeric'}, {'nonempty', 'scalar'}, 'desiredMsg', 'VphiDes');
            
            obj.JavaMessage.setVphiDes(vphides);
        end
        
        function phides = get.PhiDes(obj)
            %get.PhiDes Get the value for property PhiDes
            phides = double(obj.JavaMessage.getPhiDes);
        end
        
        function set.PhiDes(obj, phides)
            %set.PhiDes Set the value for property PhiDes
            validateattributes(phides, {'numeric'}, {'nonempty', 'scalar'}, 'desiredMsg', 'PhiDes');
            
            obj.JavaMessage.setPhiDes(phides);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.XDes = obj.XDes;
            cpObj.YDes = obj.YDes;
            cpObj.VxDes = obj.VxDes;
            cpObj.VyDes = obj.VyDes;
            cpObj.VphiDes = obj.VphiDes;
            cpObj.PhiDes = obj.PhiDes;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.XDes = strObj.XDes;
            obj.YDes = strObj.YDes;
            obj.VxDes = strObj.VxDes;
            obj.VyDes = strObj.VyDes;
            obj.VphiDes = strObj.VphiDes;
            obj.PhiDes = strObj.PhiDes;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.XDes = obj.XDes;
            strObj.YDes = obj.YDes;
            strObj.VxDes = obj.VxDes;
            strObj.VyDes = obj.VyDes;
            strObj.VphiDes = obj.VphiDes;
            strObj.PhiDes = obj.PhiDes;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.sim_control.desiredMsg.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.sim_control.desiredMsg;
            obj.reload(strObj);
        end
    end
end
