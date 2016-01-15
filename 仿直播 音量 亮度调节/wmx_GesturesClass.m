//
//  wmx_GesturesClass.m
//  仿直播 音量 亮度调节
//
//  Created by 王洺轩 on 16/1/15.
//  Copyright © 2016年 王洺轩. All rights reserved.
//

#import "wmx_GesturesClass.h"
#import <MediaPlayer/MediaPlayer.h>



@interface wmx_GesturesClass ()
@property (nonatomic,strong)UISlider *brightSlider;
@property (nonatomic,assign)float slider;
@property (nonatomic,assign)CGPoint firstPoint;
@property (nonatomic,assign)CGPoint secondPoint;
@end


@implementation wmx_GesturesClass

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    for(UITouch *touch in event.allTouches) {
        self.firstPoint = [touch locationInView:self];
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    for(UITouch *touch in event.allTouches) {
        self.secondPoint = [touch locationInView:self];
    }

//    NSLog(@"firstPoint==%f || secondPoint===%f",self.firstPoint.x,self.secondPoint.x);
//    NSLog(@"firstPoint==%f || secondPoint===%f",self.firstPoint.y,self.secondPoint.y);
//    NSLog(@"first-second==%f",self.firstPoint.y - self.secondPoint.y);
    
    self.slider += (self.firstPoint.y - self.secondPoint.y)/500.0;
    if (self.firstPoint.x < self.frame.size.width / 2) {
        [[UIScreen mainScreen] setBrightness: self.slider];
    }else
    {
        //音量
        MPMusicPlayerController *musicPlayer;
        musicPlayer = [MPMusicPlayerController applicationMusicPlayer];
        [musicPlayer setVolume:self.slider];
    }
    
    
    
    self.firstPoint = self.secondPoint;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    //    NSLog(@"touchesEnded");
    self.firstPoint = self.secondPoint = CGPointZero;
}


@end
