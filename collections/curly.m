% out = curly(cell_array,inds1,inds2,...,indsN)
%
% Functional interface to cell array slicing
%
% For example, A{1,:,1:3} is equivalent to curly(A,1,':',1:3)
%
% Note: pass the string ':' for :
function varargout = curly(collection, varargin)
    if ~iscell(collection)
        error('curly:noncell','Only valid for cell input for collection.')
    end
	[varargout{1:numel(paren(collection,varargin{:}))}] = collection{varargin{:}};
end