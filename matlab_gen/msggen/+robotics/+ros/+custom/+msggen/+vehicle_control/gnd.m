classdef gnd < robotics.ros.Message
    %gnd MATLAB implementation of vehicle_control/gnd
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2019 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'vehicle_control/gnd' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '43eceb627fd3a673044111e6e1920aa4' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        XGnd
        YGnd
        QX
        QY
        QZ
        QW
        VelX
        VelY
        VelPhi
    end
    
    properties (Constant, Hidden)
        PropertyList = {'QW', 'QX', 'QY', 'QZ', 'VelPhi', 'VelX', 'VelY', 'XGnd', 'YGnd'} % List of non-constant message properties
        ROSPropertyList = {'q_w', 'q_x', 'q_y', 'q_z', 'vel_phi', 'vel_x', 'vel_y', 'x_gnd', 'y_gnd'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = gnd(msg)
            %gnd Construct the message object gnd
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
        
        function xgnd = get.XGnd(obj)
            %get.XGnd Get the value for property XGnd
            xgnd = double(obj.JavaMessage.getXGnd);
        end
        
        function set.XGnd(obj, xgnd)
            %set.XGnd Set the value for property XGnd
            validateattributes(xgnd, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'XGnd');
            
            obj.JavaMessage.setXGnd(xgnd);
        end
        
        function ygnd = get.YGnd(obj)
            %get.YGnd Get the value for property YGnd
            ygnd = double(obj.JavaMessage.getYGnd);
        end
        
        function set.YGnd(obj, ygnd)
            %set.YGnd Set the value for property YGnd
            validateattributes(ygnd, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'YGnd');
            
            obj.JavaMessage.setYGnd(ygnd);
        end
        
        function qx = get.QX(obj)
            %get.QX Get the value for property QX
            qx = double(obj.JavaMessage.getQX);
        end
        
        function set.QX(obj, qx)
            %set.QX Set the value for property QX
            validateattributes(qx, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'QX');
            
            obj.JavaMessage.setQX(qx);
        end
        
        function qy = get.QY(obj)
            %get.QY Get the value for property QY
            qy = double(obj.JavaMessage.getQY);
        end
        
        function set.QY(obj, qy)
            %set.QY Set the value for property QY
            validateattributes(qy, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'QY');
            
            obj.JavaMessage.setQY(qy);
        end
        
        function qz = get.QZ(obj)
            %get.QZ Get the value for property QZ
            qz = double(obj.JavaMessage.getQZ);
        end
        
        function set.QZ(obj, qz)
            %set.QZ Set the value for property QZ
            validateattributes(qz, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'QZ');
            
            obj.JavaMessage.setQZ(qz);
        end
        
        function qw = get.QW(obj)
            %get.QW Get the value for property QW
            qw = double(obj.JavaMessage.getQW);
        end
        
        function set.QW(obj, qw)
            %set.QW Set the value for property QW
            validateattributes(qw, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'QW');
            
            obj.JavaMessage.setQW(qw);
        end
        
        function velx = get.VelX(obj)
            %get.VelX Get the value for property VelX
            velx = double(obj.JavaMessage.getVelX);
        end
        
        function set.VelX(obj, velx)
            %set.VelX Set the value for property VelX
            validateattributes(velx, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'VelX');
            
            obj.JavaMessage.setVelX(velx);
        end
        
        function vely = get.VelY(obj)
            %get.VelY Get the value for property VelY
            vely = double(obj.JavaMessage.getVelY);
        end
        
        function set.VelY(obj, vely)
            %set.VelY Set the value for property VelY
            validateattributes(vely, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'VelY');
            
            obj.JavaMessage.setVelY(vely);
        end
        
        function velphi = get.VelPhi(obj)
            %get.VelPhi Get the value for property VelPhi
            velphi = double(obj.JavaMessage.getVelPhi);
        end
        
        function set.VelPhi(obj, velphi)
            %set.VelPhi Set the value for property VelPhi
            validateattributes(velphi, {'numeric'}, {'nonempty', 'scalar'}, 'gnd', 'VelPhi');
            
            obj.JavaMessage.setVelPhi(velphi);
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
            cpObj.XGnd = obj.XGnd;
            cpObj.YGnd = obj.YGnd;
            cpObj.QX = obj.QX;
            cpObj.QY = obj.QY;
            cpObj.QZ = obj.QZ;
            cpObj.QW = obj.QW;
            cpObj.VelX = obj.VelX;
            cpObj.VelY = obj.VelY;
            cpObj.VelPhi = obj.VelPhi;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.XGnd = strObj.XGnd;
            obj.YGnd = strObj.YGnd;
            obj.QX = strObj.QX;
            obj.QY = strObj.QY;
            obj.QZ = strObj.QZ;
            obj.QW = strObj.QW;
            obj.VelX = strObj.VelX;
            obj.VelY = strObj.VelY;
            obj.VelPhi = strObj.VelPhi;
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
            
            strObj.XGnd = obj.XGnd;
            strObj.YGnd = obj.YGnd;
            strObj.QX = obj.QX;
            strObj.QY = obj.QY;
            strObj.QZ = obj.QZ;
            strObj.QW = obj.QW;
            strObj.VelX = obj.VelX;
            strObj.VelY = obj.VelY;
            strObj.VelPhi = obj.VelPhi;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.vehicle_control.gnd.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.vehicle_control.gnd;
            obj.reload(strObj);
        end
    end
end
