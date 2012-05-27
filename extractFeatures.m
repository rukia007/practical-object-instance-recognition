function [frames, descrs] = extractFeatures(im, doAffineAdaptation, doOrientation)
if size(im,3) > 1, im = rgb2gray(im) ; end
im = im2single(im) ;
[frames, descrs] = vl_covdet(im, ...
                             'AffineAdaptation', doAffineAdaptation, ...
                             'Orientation', doOrientation, ...
                             'FloatDescriptors') ;
