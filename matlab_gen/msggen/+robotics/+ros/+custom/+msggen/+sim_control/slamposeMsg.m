classdef slamposeMsg < robotics.ros.Message
    %slamposeMsg MATLAB implementation of sim_control/slamposeMsg
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'sim_control/slamposeMsg' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'b57dbf56adf7a4f738879a235d48afaa' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        XEst
        YEst
        PhiEst
    end
    
    properties (Constant, Hidden)
        PropertyList = {'PhiEst', 'XEst', 'YEst'} % List of non-constant message properties
        ROSPropertyList = {'phi_est', 'x_est', 'y_est'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = slamposeMsg(msg)
            %slamposeMsg Construct the message object slamposeMsg
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
        
        function xest = get.XEst(obj)
            %get.XEst Get the value for property XEst
            xest = double(obj.JavaMessage.getXEst);
        end
        
        function set.XEst(obj, xest)
            %set.XEst Set the value for property XEst
            validateattributes(xest, {'numeric'}, {'nonempty', 'scalar'}, 'slamposeMsg', 'XEst');
            
            obj.JavaMessage.setXEst(xest);
        end
        
        function yest = get.YEst(obj)
            %get.YEst Get the value for property YEst
            yest = double(obj.JavaMessage.getYEst);
        end
        
        function set.YEst(obj, yest)
            %set.YEst Set the value for property YEst
            validateattributes(yest, {'numeric'}, {'nonempty', 'scalar'}, 'slamposeMsg', 'YEst');
            
            obj.JavaMessage.setYEst(yest);
        end
        
        function phiest = get.PhiEst(obj)
            %get.PhiEst Get the value for property PhiEst
            phiest = double(obj.JavaMessage.getPhiEst);
        end
        
        function set.PhiEst(obj, phiest)
            %set.PhiEst Set the value for property PhiEst
            validateattributes(phiest, {'numeric'}, {'nonempty', 'scalar'}, 'slamposeMsg', 'PhiEst');
            
            obj.JavaMessage.setPhiEst(phiest);
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
            cpObj.XEst = obj.XEst;
            cpObj.YEst = obj.YEst;
            cpObj.PhiEst = obj.PhiEst;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.XEst = strObj.XEst;
            obj.YEst = strObj.YEst;
            obj.PhiEst = strObj.PhiEst;
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
            
            strObj.XEst = obj.XEst;
            strObj.YEst = obj.YEst;
            strObj.PhiEst = obj.PhiEst;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.sim_control.slamposeMsg.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.sim_control.slamposeMsg;
            obj.reload(strObj);
        end
    end
end
