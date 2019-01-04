//
//  ViewController.m
//  cubes
//
//  Created by Kaleo Kim on 5/1/15.
//  Copyright (c) 2015 Kaleo Kim. All rights reserved.
//

#import "ViewController.h"

@import SceneKit;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SCNView *sceneView;
@property (strong) SCNNode *cubeNode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupScene];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupScene {
    // Configure the Scene View
    self.sceneView.backgroundColor = [UIColor darkGrayColor];
    
    SCNScene *scene = [SCNScene scene];
    
    SCNCamera *camera = [SCNCamera camera];
    camera.xFov = 10.0;
    camera.yFov = 45.0;
    
    SCNNode *cameraNode = [SCNNode node];
    cameraNode.camera = camera;
    cameraNode.position = SCNVector3Make(0.0, 0.0, 50.0);
    [scene.rootNode addChildNode:cameraNode];
    
    //create a cube
    SCNBox *cube = [SCNBox boxWithWidth:5.0 height:5.0 length:5.0 chamferRadius:1.0];
    cube.firstMaterial.diffuse.contents = [UIColor colorWithRed:0.149 green:0.604 blue:0.859 alpha:1.000];
    
    SCNNode *cubeNode = [SCNNode nodeWithGeometry:cube];
    [scene.rootNode addChildNode:cubeNode];
    self.cubeNode = cubeNode;
    
    // Add an animation to the cube.
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"rotation"];
    animation.values = @[[NSValue valueWithSCNVector4:SCNVector4Make(1, 1, 0.3, 0 * M_PI)],
                         [NSValue valueWithSCNVector4:SCNVector4Make(1, 1, 0.3, 1 * M_PI)],
                         [NSValue valueWithSCNVector4:SCNVector4Make(1, 1, 0.3, 2 * M_PI)]];
    animation.duration = 5;
    animation.repeatCount = HUGE_VALF;
    [self.cubeNode addAnimation:animation forKey:@"rotation"];
    self.cubeNode.paused = YES; // Start out paused
    
    self.sceneView.scene = scene;
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
// Touch handling method implementation
UITouch *touch = [touches anyObject];
CGPoint touchPoint = [touch locationInView:self.sceneView];
SCNHitTestResult *hitTestResult = [[self.sceneView hitTest:touchPoint options:nil] firstObject];
SCNNode *hitNode = hitTestResult.node;
hitNode.paused = !hitNode.paused;
}

@end






