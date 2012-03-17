.class public Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;
.super Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.source "TiltDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;,
        Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltDetector"


# instance fields
.field private final mAccerometer:Landroid/hardware/Sensor;

.field private mCurrent:I

.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

.field private mRunning:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;)V
    .locals 3
    .parameter "manager"
    .parameter "tiltingStrategy"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;-><init>()V

    .line 97
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mCurrent:I

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mAccerometer:Landroid/hardware/Sensor;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

    .line 49
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mRunning:Z

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mTiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;

    .line 51
    return-void
.end method

.method private changeState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    const-string v0, "TiltDetector"

    const-string v1, "changeState(running:"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mRunning:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, ")"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mAccerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 95
    return-void
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mRunning:Z

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->changeState()V

    .line 57
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mRunning:Z

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->changeState()V

    .line 63
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mTiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;->computeIndex(Landroid/hardware/SensorEvent;)I

    move-result v0

    .line 105
    .local v0, target:I
    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 106
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mCurrent:I

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mCurrent:I

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;->onUpdated(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V

    .line 111
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mRunning:Z

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->changeState()V

    .line 69
    return-void
.end method

.method public start(IILcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;)V
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "listener"

    .prologue
    .line 72
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mTiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;->init(II)V

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->changeState()V

    .line 75
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltListener;

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->mTiltingStrategy:Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;->reset()V

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;->changeState()V

    .line 81
    return-void
.end method
