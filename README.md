# webrtc_aec3
# base from branch https://github.com/ewan-xu/AEC3
# add linux build version
/*  
 *  Copyright (c) 2017 The WebRTC project authors. All Rights Reserved.  
 *
 *  Use of this source code is governed by a BSD-style license  
 *  that can be found in the LICENSE file in the root of the source  
 *  tree. An additional intellectual property rights grant can be found  
 *  in the file PATENTS.  All contributing project authors may  
 *  be found in the AUTHORS file in the root of the source tree.  
 */
     
you can build in linux like this:  
cd master dir: webrtc_aec3  
bash run.sh  
then you will create build dir  
cp build/linux64/release/bin/AEC3 . 
or  
cp build/linux64/debug/bin/AEC3 .   
./AEC3  
