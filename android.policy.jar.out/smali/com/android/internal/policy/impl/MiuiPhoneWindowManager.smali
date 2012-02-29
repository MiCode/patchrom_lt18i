.class public Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110


# instance fields
.field private mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

.field mBackLongPressed:Z

.field private mBinder:Landroid/os/Binder;

.field mCameraKeyWakeScreen:Z

.field mFullscreenForDialog:Z

.field private mIsStatusBarVisibleInFullscreen:Z

.field mMenuPressed:Z

.field mScreenOffReason:I

.field mScreenshotTrigger:Z

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarHeight:I

.field private mStatusBarInputChannel:Landroid/view/InputChannel;

.field private final mStatusBarInputHandler:Landroid/view/InputHandler;

.field mTrackballWakeScreen:Z

.field mVolumeDownPressed:Z

.field mVolumeKeyWakeScreen:Z

.field mVolumeUpPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 203
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    .line 340
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 342
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputHandler:Landroid/view/InputHandler;

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isEnableKeyguardTorch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    return v0
.end method

.method private isEnableKeyguardTorch()Z
    .locals 1

    .prologue
    .line 412
    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMaxBacklightBrightness()V
    .locals 2

    .prologue
    .line 299
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 301
    .local v0, power:Landroid/os/IPowerManager;
    const/16 v1, 0xff

    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v5, 0x0

    .line 349
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 351
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 352
    .local v1, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 353
    if-eqz p1, :cond_2

    const/high16 v2, 0x2000

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    .line 363
    if-eqz p1, :cond_3

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 370
    :cond_1
    :goto_2
    return-void

    .restart local v1       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    move v2, v5

    .line 353
    goto :goto_0

    .line 358
    .end local v1           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_2
.end method

.method private setTorch(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v1, "net.cactii.flash2.EXTRA_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    return-void
.end method


# virtual methods
.method public finishAnimationLw()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 308
    .local v1, statusBar:Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v3, :cond_0

    .line 309
    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 311
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishAnimationLw()I

    move-result v0

    .line 312
    .local v0, result:I
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 314
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v2, v3

    .line 318
    .local v2, topIsFullscreen:Z
    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-nez v3, :cond_1

    .line 321
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v4, "StatusBarView"

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    .line 322
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputHandler:Landroid/view/InputHandler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v2           #topIsFullscreen:Z
    :cond_1
    :goto_1
    return v0

    .line 316
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 329
    .restart local v2       #topIsFullscreen:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_1

    .line 330
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    invoke-static {v3}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 331
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 332
    iput-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputChannel:Landroid/view/InputChannel;

    goto :goto_1

    .line 324
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 4
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V

    .line 208
    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/os/Handler;)V

    .line 209
    .local v1, settingsObserver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 211
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 239
    new-instance v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z
    .locals 9
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 426
    if-nez p2, :cond_2

    const/4 v5, 0x1

    move v1, v5

    .line 428
    .local v1, down:Z
    :goto_0
    const/16 v5, 0x52

    if-ne p4, v5, :cond_3

    .line 429
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    .line 437
    :cond_0
    :goto_1
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    if-eqz v5, :cond_5

    .line 438
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    if-nez v5, :cond_1

    .line 439
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    .line 440
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.app.ExtraStatusBarManager.CAPTURE_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :cond_1
    const/4 v5, 0x1

    .line 530
    :goto_2
    return v5

    .line 426
    .end local v1           #down:Z
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 430
    .restart local v1       #down:Z
    :cond_3
    const/16 v5, 0x18

    if-ne p4, v5, :cond_4

    .line 431
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    goto :goto_1

    .line 432
    :cond_4
    const/16 v5, 0x19

    if-ne p4, v5, :cond_0

    .line 433
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    goto :goto_1

    .line 443
    :cond_5
    :try_start_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    if-eqz v5, :cond_6

    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setMaxBacklightBrightness()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    :cond_6
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    .line 450
    .local v3, lastScreenshotTriggered:Z
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    if-nez v5, :cond_8

    .line 451
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenshotTrigger:Z

    .line 454
    :cond_8
    const/16 v5, 0x19

    if-ne p4, v5, :cond_9

    if-eqz v3, :cond_9

    .line 456
    const/4 v5, 0x1

    goto :goto_2

    .line 459
    :cond_9
    const/4 v5, 0x3

    if-ne p4, v5, :cond_a

    if-nez v1, :cond_a

    .line 460
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isEnableKeyguardTorch()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 462
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V

    .line 466
    :cond_a
    const/4 v5, 0x3

    if-ne p4, v5, :cond_f

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    if-nez v5, :cond_f

    .line 469
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    move-object v0, v5

    .line 470
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_4
    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isEnableKeyguardTorch()Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_b

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d9

    if-ne v5, v6, :cond_15

    .line 474
    :cond_b
    rem-int/lit8 v5, p7, 0xa

    const/4 v6, 0x6

    if-ne v5, v6, :cond_e

    .line 475
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 481
    :cond_c
    :goto_5
    const/4 v5, 0x1

    goto :goto_2

    .line 469
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_4

    .line 477
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_e
    if-eqz v1, :cond_c

    if-nez p7, :cond_c

    .line 478
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    goto :goto_5

    .line 483
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_f
    const/4 v5, 0x4

    if-ne p4, v5, :cond_15

    .line 485
    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    move-object v0, v5

    .line 486
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_6
    if-eqz v0, :cond_14

    .line 487
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_10

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-le v5, v6, :cond_11

    :cond_10
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_12

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_12

    :cond_11
    const-string v5, "com.android.systemui"

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "com.android.phone"

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "com.android.mms"

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "com.android.contacts"

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "com.android.launcher"

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "com.miui.fmradio"

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 497
    :cond_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    invoke-super/range {p0 .. p8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z

    move-result v5

    goto/16 :goto_2

    .line 485
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_13
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_6

    .line 502
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_14
    if-nez v1, :cond_16

    .line 504
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_15
    :goto_7
    invoke-super/range {p0 .. p8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z

    move-result v5

    goto/16 :goto_2

    .line 506
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_16
    if-nez p7, :cond_15

    .line 507
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    .line 509
    if-eqz p1, :cond_15

    .line 513
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "back_key_long_press_timeout"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 516
    .local v4, timeout:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->setTarget(Landroid/view/WindowManagerPolicy$WindowState;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 523
    :goto_8
    if-lez v4, :cond_15

    .line 524
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPress:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    int-to-long v7, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 517
    .end local v4           #timeout:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 519
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    long-to-int v4, v5

    .restart local v4       #timeout:I
    goto :goto_8

    .line 446
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v3           #lastScreenshotTriggered:Z
    .end local v4           #timeout:I
    :catch_1
    move-exception v5

    goto/16 :goto_3
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .locals 6
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 536
    if-nez p3, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 537
    .local v0, down:Z
    :goto_0
    const/high16 v4, 0x100

    and-int/2addr v4, p7

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v1, v4

    .line 538
    .local v1, isInjected:Z
    :goto_1
    if-eqz p8, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    move v3, v4

    .line 542
    .local v3, keyguardActive:Z
    :goto_2
    if-nez p8, :cond_0

    if-eqz v1, :cond_4

    .line 544
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    const/16 v4, 0x1b

    if-ne p5, v4, :cond_9

    if-eqz v0, :cond_9

    .line 545
    const/4 v4, 0x4

    .line 569
    :goto_3
    return v4

    .line 536
    .end local v0           #down:Z
    .end local v1           #isInjected:Z
    .end local v3           #keyguardActive:Z
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 537
    .restart local v0       #down:Z
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1

    .line 538
    .restart local v1       #isInjected:Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v4

    move v3, v4

    goto :goto_2

    .line 551
    .restart local v3       #keyguardActive:Z
    :cond_4
    const/16 v4, 0x110

    if-ne p5, v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    if-nez v4, :cond_6

    :cond_5
    const/16 v4, 0x1b

    if-ne p5, v4, :cond_a

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v4, :cond_a

    :cond_6
    const/4 v4, 0x1

    move v2, v4

    .line 557
    .local v2, isWakeKey:Z
    :goto_4
    if-nez v2, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x18

    if-eq p5, v4, :cond_7

    const/16 v4, 0x19

    if-ne p5, v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffReason:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    .line 560
    const/4 v2, 0x1

    .line 563
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 564
    or-int/lit8 p7, p7, 0x1

    .line 565
    const/16 p5, 0x1a

    .line 569
    .end local v2           #isWakeKey:Z
    :cond_9
    invoke-super/range {p0 .. p8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(JIIIIIZ)I

    move-result v4

    goto :goto_3

    .line 551
    :cond_a
    const/4 v4, 0x0

    move v2, v4

    goto :goto_4
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.UNLOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 296
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    .line 574
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mScreenOffReason:I

    .line 577
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    .line 579
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    .line 580
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOn()V

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeUpPressed:Z

    .line 588
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeDownPressed:Z

    .line 589
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMenuPressed:Z

    .line 590
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 265
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSettings()V

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 269
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "trackball_wake_screen"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_0

    move v3, v7

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 271
    const-string v3, "volumekey_wake_screen"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_1

    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 274
    const-string v3, "camera_key_preferred_action_type"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 277
    .local v0, cameraKeyActionType:I
    if-ne v7, v0, :cond_3

    .line 278
    const/4 v3, 0x4

    const-string v4, "camera_key_preferred_action_shortcut_id"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_2

    move v3, v7

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 287
    :goto_3
    monitor-exit v2

    .line 288
    return-void

    .end local v0           #cameraKeyActionType:I
    :cond_0
    move v3, v6

    .line 269
    goto :goto_0

    :cond_1
    move v3, v6

    .line 271
    goto :goto_1

    .restart local v0       #cameraKeyActionType:I
    :cond_2
    move v3, v6

    .line 278
    goto :goto_2

    .line 285
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto :goto_3

    .line 287
    .end local v0           #cameraKeyActionType:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
