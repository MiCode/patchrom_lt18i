.class public abstract Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;
.super Landroid/app/Activity;
.source "ViewerActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;
.implements Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$ScreenTimeoutListener;
.implements Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewerActivity"


# instance fields
.field private mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

.field private mBrowser:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

.field protected mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

.field private mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

.field private mMultiAngle:Landroid/widget/RelativeLayout;

.field private mPanorama3d:Landroid/widget/RelativeLayout;

.field private mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

.field private mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupWindow()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->requestWindowFeature(I)Z

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->setRequestedOrientation(I)V

    .line 335
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->setContentView(I)V

    .line 336
    return-void
.end method


# virtual methods
.method public createBrowserLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->createFactory(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mBrowser:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;)V

    return-object v0
.end method

.method public createPlayerLayer(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    .locals 4
    .parameter "type"

    .prologue
    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne p1, v0, :cond_0

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mMultiAngle:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;)V

    .line 105
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v0, v1, :cond_1

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mPanorama3d:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;Z)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mPanorama3d:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->isEnableKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->onKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->onTouch(Landroid/view/MotionEvent;)Z

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getController()Lcom/sonyericsson/android/camera3d/viewer/AppController;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    return-object v0
.end method

.method protected getPreviousMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 400
    const-string v2, "com.sonyericsson.android.camera3d.shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 404
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "PREVIOUS_MODE"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, modeSetting:Ljava/lang/String;
    return-object v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 247
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->finish()V

    .line 276
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "icicle"

    .prologue
    .line 124
    const-string v2, "imagebank"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 126
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->setupWindow()V

    .line 131
    const v2, 0x7f0d0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mBrowser:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    .line 133
    const v2, 0x7f0d000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mMultiAngle:Landroid/widget/RelativeLayout;

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mMultiAngle:Landroid/widget/RelativeLayout;

    const v8, 0x7f0d0017

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 136
    .local v18, guideIconMa:Landroid/widget/ImageView;
    const v2, 0x7f020022

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 138
    const v2, 0x7f0d000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mPanorama3d:Landroid/widget/RelativeLayout;

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mPanorama3d:Landroid/widget/RelativeLayout;

    const v8, 0x7f0d0017

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 141
    .local v17, guideIcon3d:Landroid/widget/ImageView;
    const v2, 0x7f020017

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 143
    const v2, 0x7f0d0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;

    .line 144
    .local v22, touchEventGuardView:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->getClient()Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    move-result-object v14

    .line 146
    .local v14, touchEventGuard:Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;
    new-instance v4, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;-><init>(Landroid/content/Context;)V

    .line 147
    .local v4, providerAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;-><init>()V

    .line 148
    .local v3, mpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;
    invoke-static {}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->getInstance()Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    move-result-object v5

    .line 149
    .local v5, imageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f010014

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f010015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    add-int/2addr v2, v8

    int-to-long v6, v2

    .line 152
    .local v6, intervalOfLoadingContent:J
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f010002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->setupConfig(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Landroid/content/Intent;I)V

    .line 162
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v24

    .line 164
    .local v24, window:Landroid/view/Window;
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;-><init>(Landroid/view/Window;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;->addListener(Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout$ScreenTimeoutListener;)V

    .line 166
    const-string v2, "sensor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/SensorManager;

    .line 167
    .local v20, sensorManager:Landroid/hardware/SensorManager;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 168
    .local v19, resource:Landroid/content/res/Resources;
    const v2, 0x7f010023

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 170
    .local v23, uiType:Ljava/lang/String;
    const-string v2, "SMALL_UI"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v21, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;

    invoke-direct/range {v21 .. v21}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;-><init>()V

    .line 175
    .local v21, tiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;
    :goto_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;-><init>(Landroid/hardware/SensorManager;Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    .line 176
    new-instance v15, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;-><init>(Landroid/content/Context;)V

    .line 178
    .local v15, deviceEventReceiver:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;
    new-instance v8, Lcom/sonyericsson/android/camera3d/viewer/AppController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mTiltDetector:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mScreenTimeout:Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v16}, Lcom/sonyericsson/android/camera3d/viewer/AppController;-><init>(Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;Lcom/sonyericsson/android/camera3d/viewer/layer/LayerFactory;Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    .line 188
    return-void

    .line 173
    .end local v15           #deviceEventReceiver:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;
    .end local v21           #tiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;
    :cond_0
    new-instance v21, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;

    invoke-direct/range {v21 .. v21}, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;-><init>()V

    .restart local v21       #tiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    .line 223
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mPanorama3d:Landroid/widget/RelativeLayout;

    .line 224
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mMultiAngle:Landroid/widget/RelativeLayout;

    .line 225
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mBrowser:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->release()V

    .line 228
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->release()V

    .line 232
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    .line 234
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 236
    return-void
.end method

.method public onFinish(Lcom/sonyericsson/android/camera3d/viewer/AppController;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->finish()V

    .line 192
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->setIntent(Landroid/content/Intent;)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->setupConfig(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Landroid/content/Intent;I)V

    .line 309
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->onPause()V

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->onResume()V

    .line 203
    return-void
.end method

.method public onTimeout(Lcom/sonyericsson/android/camera3d/viewer/service/ScreenTimeout;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->finish()V

    .line 322
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->mAppController:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->onWindowFocusChanged(Z)V

    .line 316
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 317
    return-void
.end method

.method protected restorePreviousMode(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 6
    .parameter "dataStore"

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getProvider()Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-result-object v3

    .line 341
    .local v3, providerAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    const-string v4, "com.sonyericsson.android.camera3d.shared_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 345
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 346
    .local v1, mpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    if-eqz v2, :cond_3

    .line 347
    const-string v4, "PREVIOUS_MODE"

    const-string v5, "PANORAMA_3D"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 351
    const-string v4, "PANORAMA_3D"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 370
    .end local v0           #mode:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f010002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setMpoInfoQuery(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;)V

    .line 372
    return-void

    .line 354
    .restart local v0       #mode:Ljava/lang/String;
    :cond_1
    const-string v4, "MULTI_ANGLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0

    .line 361
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0

    .line 368
    .end local v0           #mode:Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0
.end method

.method protected abstract setupConfig(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Landroid/content/Intent;I)V
.end method

.method protected storePreviousMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 376
    const-string v3, "com.sonyericsson.android.camera3d.shared_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 379
    .local v2, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 380
    .local v1, modeSetting:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 381
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne p1, v3, :cond_2

    .line 382
    const-string v1, "MULTI_ANGLE"

    .line 386
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 387
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PREVIOUS_MODE"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 383
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne p1, v3, :cond_0

    .line 384
    const-string v1, "PANORAMA_3D"

    goto :goto_0
.end method
