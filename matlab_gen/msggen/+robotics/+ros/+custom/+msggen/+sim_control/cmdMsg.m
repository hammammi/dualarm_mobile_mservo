classdef cmdMsg < robotics.ros.Message
    %cmdMsg MATLAB implementation of sim_control/cmdMsg
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'sim_control/cmdMsg' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'e506c2acbe1209e5ec952b40f5ea5ac4' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Xd
        Yd
        Phid
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Phid', 'Xd', 'Yd'} % List of non-constant message properties
        ROSPropertyList = {'phid', 'xd', 'yd'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = cmdMsg(msg)
            %cmdMsg Construct the message object cmdMsg
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
        
        function xd = get.Xd(obj)
            %get.Xd Get the value for property Xd
            xd = double(obj.JavaMessage.getXd);
        end
        
        function set.Xd(obj, xd)
            %set.Xd Set the value for property Xd
            validateattributes(xd, {'numeric'}, {'nonempty', 'scalar'}, 'cmdMsg', 'Xd');
            
            obj.JavaMessage.setXd(xd);
        end
        
        function yd = get.Yd(obj)
            %get.Yd Get the value for property Yd
            yd = double(obj.JavaMessage.getYd);
        end
        
        function set.Yd(obj, yd)
            %set.Yd Set the value for property Yd
            validateattributes(yd, {'numeric'}, {'nonempty', 'scalar'}, 'cmdMsg', 'Yd');
            
            obj.JavaMessage.setYd(yd);
        end
        
        function phid = get.Phid(obj)
            %get.Phid Get the value for property Phid
            phid = double(obj.JavaMessage.getPhid);
        end
        
        function set.Phid(obj, phid)
            %set.Phid Set the value for property Phid
            validateattributes(phid, {'numeric'}, {'nonempty', 'scalar'}, 'cmdMsg', 'Phid');
            
            obj.JavaMessage.setPhid(phid);
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
            cpObj.Xd = obj.Xd;
            cpObj.Yd = obj.Yd;
            cpObj.Phid = obj.Phid;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Xd = strObj.Xd;
            obj.Yd = strObj.Yd;
            obj.Phid = strObj.Phid;
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
            
            strObj.Xd = obj.Xd;
            strObj.Yd = obj.Yd;
            strObj.Phid = obj.Phid;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.sim_control.cmdMsg.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.sim_control.cmdMsg;
            obj.reload(strObj);
        end
    end
end