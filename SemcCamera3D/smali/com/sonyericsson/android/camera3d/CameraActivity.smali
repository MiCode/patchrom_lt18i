.class public Lcom/sonyericsson/android/camera3d/CameraActivity;
.super Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/CameraActivity$1;,
        Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;
    }
.end annotation


# static fields
.field public static final CAPTURING_MODE_DEFAULT:Ljava/lang/String; = "CAPTURING_MODE_DEFAULT"

.field public static final CAPTURING_MODE_NONE:Ljava/lang/String; = "CAPTURING_MODE_NONE"

.field public static final PAUSE_CATEGORY_CLOSED:I = -0x1

.field public static final PAUSE_CATEGORY_MENU:I = 0x1

.field public static final PAUSE_CATEGORY_OPEN:I = 0x0

.field public static final PAUSE_CATEGORY_QUICK_SETTINGS:I = 0x2

.field public static final PAUSE_CATEGORY_REVIEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraActivity"


# instance fields
.field private igonoreOnKeyDownEventUntilZoomStop:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackFromLocationSourceSettings:Z

.field public mBackFromMainCamera:Z

.field private mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;

.field private mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

.field private mEnableBackKey:Z

.field private mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

.field private mIsFinishRequestReceiverAlreadyRegistered:Z

.field private mIsOneShotCapture:Z

.field private mLaunchCameraId:I

.field private mLaunchCapturingMode:Ljava/lang/String;

.field private mOpenCameraFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseStateCategory:I

.field private mRequestedCapturingMode:Ljava/lang/String;

.field private mUpdateSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->igonoreOnKeyDownEventUntilZoomStop:Ljava/util/Set;

    .line 93
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsOneShotCapture:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mEnableBackKey:Z

    .line 99
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromLocationSourceSettings:Z

    .line 103
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mUpdateSettings:Z

    .line 106
    iput v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I

    .line 109
    const-string v0, "CAPTURING_MODE_NONE"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    .line 119
    const-string v0, "CAPTURING_MODE_NONE"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCapturingMode:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromMainCamera:Z

    .line 125
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera3d/CameraActivity;Lcom/sonyericsson/android/camera3d/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 129
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsFinishRequestReceiverAlreadyRegistered:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mPauseStateCategory:I

    .line 155
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    .line 158
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    .line 196
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/CameraActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I

    return v0
.end method

.method private changeModeAsRequested()V
    .locals 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->changeModeToCamera()V

    .line 738
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsOneShotCapture:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setOneShotMode()V

    .line 743
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    const-string v1, "CAPTURING_MODE_DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->cancelPanorama2D()V

    .line 753
    :goto_1
    const-string v0, "CAPTURING_MODE_NONE"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setLaunchCapturingMode(Ljava/lang/String;)V

    .line 757
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNormalMode()V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    const-string v2, "CAPTURING_MODE_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(Landroid/content/Intent;)V

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 587
    .local v0, homeLongPressed:Z
    :goto_1
    if-nez v0, :cond_1

    .line 592
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(Landroid/content/Intent;)V

    goto :goto_0

    .line 582
    .end local v0           #homeLongPressed:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private copyContentToExtraOutputUri(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 10
    .parameter "input"
    .parameter "output"

    .prologue
    .line 1363
    const/4 v4, 0x0

    .line 1364
    .local v4, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 1365
    .local v3, is:Ljava/io/InputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 1366
    .local v0, buf:[B
    const/4 v6, 0x0

    .line 1367
    .local v6, size:I
    const/4 v5, 0x0

    .line 1369
    .local v5, result:Z
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/android/camera3d/ImageManager;->crOpenInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1370
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1371
    if-eqz v3, :cond_4

    .line 1372
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 1373
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    .line 1379
    :catch_0
    move-exception v1

    .line 1380
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v7, "CameraActivity"

    const-string v8, "Saved image not found"

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1388
    if-eqz v4, :cond_0

    .line 1390
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1391
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1396
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1398
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1404
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return v5

    .line 1375
    :cond_2
    const/4 v5, 0x1

    .line 1388
    :goto_3
    if-eqz v4, :cond_3

    .line 1390
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1391
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1396
    :cond_3
    :goto_4
    if-eqz v3, :cond_1

    .line 1398
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1399
    :catch_1
    move-exception v2

    .line 1400
    .local v2, ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Input stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1377
    .end local v2           #ex:Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 1392
    :catch_2
    move-exception v2

    .line 1393
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Output stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1392
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 1393
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Output stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1399
    .end local v2           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 1400
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Input stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1381
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1382
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    const-string v7, "CameraActivity"

    const-string v8, "File IO error"

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1388
    if-eqz v4, :cond_5

    .line 1390
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1391
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1396
    :cond_5
    :goto_5
    if-eqz v3, :cond_1

    .line 1398
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    .line 1399
    :catch_6
    move-exception v2

    .line 1400
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Input stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1392
    .end local v2           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 1393
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Output stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1383
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 1386
    .local v1, e:Ljava/lang/SecurityException;
    :try_start_9
    const-string v7, "CameraActivity"

    const-string v8, "Security error"

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1388
    if-eqz v4, :cond_6

    .line 1390
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1391
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 1396
    :cond_6
    :goto_6
    if-eqz v3, :cond_1

    .line 1398
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_2

    .line 1399
    :catch_9
    move-exception v2

    .line 1400
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Input stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1392
    .end local v2           #ex:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 1393
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "CameraActivity"

    const-string v8, "Output stream IOError"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1388
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_7

    .line 1390
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1391
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1396
    :cond_7
    :goto_7
    if-eqz v3, :cond_8

    .line 1398
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 1401
    :cond_8
    :goto_8
    throw v7

    .line 1392
    :catch_b
    move-exception v2

    .line 1393
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v8, "CameraActivity"

    const-string v9, "Output stream IOError"

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1399
    .end local v2           #ex:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 1400
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v8, "CameraActivity"

    const-string v9, "Input stream IOError"

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private setBackFromMainCamera(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 727
    const-string v0, "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromMainCamera:Z

    .line 731
    return-void
.end method

.method private setLaunchCapturingMode(Ljava/lang/String;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCapturingMode:Ljava/lang/String;

    .line 714
    return-void
.end method

.method private setRequestedCapturingMode(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 689
    const-string v2, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, extra:Ljava/lang/String;
    const-string v0, "CAPTURING_MODE_DEFAULT"

    .line 694
    .local v0, capturingMode:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 695
    const-string v2, "CAPTURING_MODE_DEFAULT"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraIntent;->convertIntentToCapturingMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    .line 702
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setLaunchCapturingMode(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method private setRequestedMode(IZIZ)V
    .locals 0
    .parameter "mode"
    .parameter "isOneShot"
    .parameter "cameraId"
    .parameter "updateSettings"

    .prologue
    .line 671
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsOneShotCapture:Z

    .line 672
    iput p3, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I

    .line 673
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mUpdateSettings:Z

    .line 678
    return-void
.end method

.method private setRequestedMode(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 598
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    invoke-direct {p0, v2, v3, v3, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(IZIZ)V

    .line 609
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedCapturingMode(Landroid/content/Intent;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setBackFromMainCamera(Landroid/content/Intent;)V

    .line 648
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I

    if-ne v1, v2, :cond_0

    .line 649
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 650
    iput v3, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I

    .line 655
    :cond_0
    return-void

    .line 611
    :cond_1
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    invoke-direct {p0, v2, v2, v3, v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(IZIZ)V

    goto :goto_0

    .line 620
    :cond_2
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    invoke-direct {p0, v2, v3, v3, v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(IZIZ)V

    goto :goto_0

    .line 629
    :cond_3
    const-string v1, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 633
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(IZIZ)V

    goto :goto_0

    .line 640
    :cond_4
    invoke-direct {p0, v2, v3, v3, v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedMode(IZIZ)V

    goto :goto_0
.end method

.method private setResultAttach(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "input"
    .parameter "mime"
    .parameter "thumb"

    .prologue
    const/4 v1, 0x0

    .line 1418
    if-eqz p3, :cond_1

    .line 1421
    new-instance v8, Landroid/content/Intent;

    const-string v0, "inline-data"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v8, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 1423
    const/4 v7, 0x0

    .line 1424
    .local v7, attach:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 1425
    .local v10, temp:Landroid/graphics/Bitmap;
    const/high16 v9, 0x3f00

    .line 1426
    .local v9, scale:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1427
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1429
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p3

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1434
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1435
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 1436
    const-string v0, "data"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1437
    invoke-virtual {v8, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #attach:Landroid/graphics/Bitmap;
    .end local v9           #scale:F
    .end local v10           #temp:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v8}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1445
    .end local v8           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1443
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(I)V

    goto :goto_0
.end method

.method private setupWindow()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->requestWindowFeature(I)Z

    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 232
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsOneShotCapture:Z

    if-eqz v0, :cond_0

    .line 1279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(I)V

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish()V

    .line 1282
    return-void
.end method

.method public abortByStartFailed()V
    .locals 3

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1290
    .local v0, message:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1291
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abort()V

    .line 1292
    return-void
.end method

.method public addIgnoreOnKeyDownEventUntilZoomStop(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 919
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v0

    .line 921
    .local v0, state:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->igonoreOnKeyDownEventUntilZoomStop:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v0           #state:I
    :cond_0
    return-void
.end method

.method public canOpenWindow()Z
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    :cond_0
    const/4 v0, 0x0

    .line 1658
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->canOpenWindow()Z

    move-result v0

    goto :goto_0
.end method

.method public changeModeToCamera()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->canChangeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->setCameraMode(I)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->changeModeToCamera()V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->changeModeToCamera()V

    goto :goto_0
.end method

.method public clearIgnoreOnKeyDownEventUntilZoomStop()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->igonoreOnKeyDownEventUntilZoomStop:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 938
    return-void
.end method

.method public final disableBackKey()V
    .locals 1

    .prologue
    .line 1685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mEnableBackKey:Z

    .line 1686
    return-void
.end method

.method public final enableBackKey()V
    .locals 1

    .prologue
    .line 1680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mEnableBackKey:Z

    .line 1681
    return-void
.end method

.method public finish(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish()V

    .line 1302
    return-void
.end method

.method public getBackFromLocationSourceSettings()Z
    .locals 1

    .prologue
    .line 1710
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromLocationSourceSettings:Z

    return v0
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplaySize:I

    return v0
.end method

.method public getHdmiConnection()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    return-object v0
.end method

.method public getPauseStateCategory()I
    .locals 1

    .prologue
    .line 1694
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mPauseStateCategory:I

    return v0
.end method

.method public isLaunchAsOneShotCapturingMode()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsOneShotCapture:Z

    return v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    :cond_0
    const/4 v0, 0x0

    .line 1649
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isMenuAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public isOneShotPhoto()Z
    .locals 1

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isLaunchAsOneShotCapturingMode()Z

    move-result v0

    return v0
.end method

.method public isSceneSupported()Z
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isSceneSupported()Z

    move-result v0

    .line 1757
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingsAvailable()Z
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1638
    :cond_0
    const/4 v0, 0x0

    .line 1640
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isSettingsAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyControllerAbort()V
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->notifyControllerAbort()V

    goto :goto_0
.end method

.method public notifyControllerPause(I)V
    .locals 2
    .parameter "category"

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->notifyControllerPause(Z)V

    .line 1609
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setPauseStateCategory(I)V

    goto :goto_0
.end method

.method public notifyControllerPause(Z)V
    .locals 1
    .parameter "stopPreview"

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->notifyControllerPause(Z)V

    goto :goto_0
.end method

.method public notifyControllerResume()V
    .locals 1

    .prologue
    .line 1624
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setPauseStateCategory(I)V

    .line 1626
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->notifyControllerResume()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1478
    invoke-super/range {p0 .. p3}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1483
    packed-switch p1, :pswitch_data_0

    .line 1579
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1487
    :pswitch_1
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "inline-data"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1493
    const-string v12, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1494
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1498
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->setContactPhoto(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1504
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateAllRecognitionName()V

    goto :goto_0

    .line 1510
    :pswitch_3
    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateRecognitionName()V

    goto :goto_0

    .line 1514
    :pswitch_4
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    if-eqz p3, :cond_0

    .line 1515
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 1516
    .local v7, manager:Landroid/app/WallpaperManager;
    if-eqz v7, :cond_0

    .line 1518
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1519
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1520
    .local v5, in:Ljava/io/InputStream;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1521
    .local v8, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v12, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1522
    const/4 v12, 0x0

    invoke-static {v5, v12, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1523
    .local v11, wall:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    if-nez v11, :cond_3

    .line 1530
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 1531
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1533
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1536
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v8           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #wall:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 1537
    .local v3, e:Ljava/io/IOException;
    const-string v12, "CameraActivity"

    const-string v13, "Can not get the wall paper manager"

    invoke-static {v12, v13, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1527
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v8       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #wall:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    invoke-virtual {v7, v11}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1528
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1547
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #manager:Landroid/app/WallpaperManager;
    .end local v8           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #wall:Landroid/graphics/Bitmap;
    :pswitch_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1548
    .local v6, intent:Landroid/content/Intent;
    const/4 v10, 0x0

    .line 1549
    .local v10, tempUri:Landroid/net/Uri;
    if-eqz p3, :cond_4

    .line 1550
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1551
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 1552
    invoke-virtual {v6, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1553
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 1556
    .end local v4           #extras:Landroid/os/Bundle;
    :cond_4
    move/from16 v0, p2

    invoke-virtual {p0, v0, v6}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish()V

    .line 1559
    if-eqz v10, :cond_0

    .line 1560
    new-instance v9, Ljava/io/File;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v9, path:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1562
    const-string v12, "CameraActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can not delete file : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1569
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #path:Ljava/io/File;
    .end local v10           #tempUri:Landroid/net/Uri;
    :pswitch_6
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setBackFromLocationSourceSettings(Z)V

    goto/16 :goto_0

    .line 1483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abort()V

    .line 1310
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 243
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 244
    const-string v2, "Start onCreate()"

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 250
    const-string v2, "nativebytearray"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 251
    const-string v2, "stitchengine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 261
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v2

    const v3, 0x8fe801

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/WorkArea;->alloc(I)V

    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setupWindow()V

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->checkIntent(Landroid/content/Intent;)V

    .line 279
    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;-><init>(Lcom/sonyericsson/android/camera3d/CameraActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    .line 282
    new-instance v2, Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/ImageManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    .line 285
    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    .line 286
    new-instance v2, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraApplication;->getIncrementalId()Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIncrementalId:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    .line 295
    const-string v2, "Start inflate camera window"

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 306
    const v2, 0x7f030007

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0d002a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    .line 331
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setup()V

    .line 340
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.android.camera3d.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsFinishRequestReceiverAlreadyRegistered:Z

    .line 345
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    .line 347
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 354
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "CameraActivity"

    const-string v3, "Out of memory error occurred in setContentView()."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abortByStartFailed()V

    goto :goto_0

    .line 313
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 316
    .local v0, e:Landroid/view/InflateException;
    const-string v2, "CameraActivity"

    const-string v3, "InflateException occurred in setContentView()."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abortByStartFailed()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 861
    const-string v0, "Start onDestroy()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->release()V

    .line 866
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    .line 869
    :cond_0
    const-string v0, "CAPTURING_MODE_NONE"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->release()V

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->release()V

    .line 880
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    if-eqz v0, :cond_3

    .line 884
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->release()V

    .line 888
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/WorkArea;->release()V

    .line 890
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->outResult()V

    .line 896
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    if-eqz v0, :cond_4

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->setErrorExit(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->releaseContext()V

    .line 901
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->stopAutoOffTimer()V

    .line 904
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsFinishRequestReceiverAlreadyRegistered:Z

    if-eqz v0, :cond_5

    .line 905
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mIsFinishRequestReceiverAlreadyRegistered:Z

    .line 909
    :cond_5
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onDestroy()V

    .line 910
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 954
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->stopAutoOffTimer()V

    .line 956
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->igonoreOnKeyDownEventUntilZoomStop:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 957
    .local v1, ignoringKeyCode:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1123
    .end local v1           #ignoringKeyCode:Ljava/lang/Integer;
    :cond_1
    :goto_0
    :pswitch_0
    return v3

    .line 964
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v4

    if-nez v4, :cond_1

    .line 974
    const/16 v4, 0x18

    if-ne p1, v4, :cond_4

    .line 975
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v2

    .line 976
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 978
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 979
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    .line 980
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 981
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->startZoomOut()V

    goto :goto_0

    .line 983
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->startZoomIn()V

    goto :goto_0

    .line 1001
    .end local v2           #state:I
    :cond_4
    const/16 v4, 0x19

    if-ne p1, v4, :cond_6

    .line 1002
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v2

    .line 1003
    .restart local v2       #state:I
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 1005
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1006
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    .line 1007
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 1008
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->startZoomIn()V

    goto :goto_0

    .line 1010
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->startZoomOut()V

    goto :goto_0

    .line 1028
    .end local v2           #state:I
    :cond_6
    const/16 v4, 0x50

    if-ne p1, v4, :cond_7

    .line 1029
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v2

    .line 1030
    .restart local v2       #state:I
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 1032
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1033
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->autofocus()V

    .line 1034
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto/16 :goto_0

    .line 1051
    .end local v2           #state:I
    :cond_7
    const/16 v4, 0x1b

    if-ne p1, v4, :cond_8

    .line 1052
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v2

    .line 1053
    .restart local v2       #state:I
    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    .line 1057
    :pswitch_4
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->shutter()V

    .line 1058
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    .line 1059
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->PRESS_SHUTTER_KEY_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    goto/16 :goto_0

    .line 1070
    .end local v2           #state:I
    :cond_8
    const/16 v4, 0x52

    if-ne p1, v4, :cond_9

    .line 1071
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isMenuAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v2

    .line 1077
    .restart local v2       #state:I
    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 1079
    :pswitch_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 1098
    .end local v2           #state:I
    :cond_9
    const/4 v4, 0x4

    if-ne p1, v4, :cond_b

    .line 1099
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isSelfTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1100
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ControllerManager;->cancelSelftimer()V

    goto/16 :goto_0

    .line 1103
    :cond_a
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mEnableBackKey:Z

    if-eqz v4, :cond_1

    .line 1123
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1003
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1030
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1053
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1077
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1675
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->startAutoOffTimer()Z

    .line 1143
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 1144
    if-ne p1, v4, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    .line 1147
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1244
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1152
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1162
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v0

    .line 1164
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1170
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->stopZoom()V

    .line 1171
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1179
    .end local v0           #state:I
    :cond_2
    const/16 v2, 0x19

    if-ne p1, v2, :cond_3

    .line 1180
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v0

    .line 1181
    .restart local v0       #state:I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1187
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->stopZoom()V

    .line 1188
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1196
    .end local v0           #state:I
    :cond_3
    const/16 v2, 0x50

    if-ne p1, v2, :cond_4

    .line 1197
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v0

    .line 1198
    .restart local v0       #state:I
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1202
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->cancelAutoFocus()V

    .line 1203
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1214
    .end local v0           #state:I
    :cond_4
    const/16 v2, 0x1b

    if-ne p1, v2, :cond_5

    .line 1215
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v0

    .line 1216
    .restart local v0       #state:I
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 1221
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1231
    .end local v0           #state:I
    :cond_5
    if-ne p1, v4, :cond_6

    .line 1233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->resetKeyDownState()V

    .line 1244
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1181
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1198
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1216
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1736
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 1738
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->checkIntent(Landroid/content/Intent;)V

    .line 1739
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 775
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 776
    const-string v0, "Start onPause()"

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 781
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCapturingMode:Ljava/lang/String;

    const-string v1, "CAPTURING_MODE_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRequestedCapturingMode:Ljava/lang/String;

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerAbort()V

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideOnScreenIconsForPause()V

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showBlankScreen()V

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->release()V

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->releaseResource()V

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences()V

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->releaseController()V

    .line 805
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromMainCamera:Z

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->release()V

    .line 811
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->release()V

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->release()V

    .line 818
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    .line 821
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->clearIgnoreOnKeyDownEventUntilZoomStop()V

    .line 824
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 827
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setLowBatteryAlarmListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;)V

    .line 828
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setInternalPhoneStateListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;)V

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 832
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    .line 835
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->finishService()V

    .line 837
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onPause()V

    .line 840
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 841
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 849
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 851
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onRestart()V

    .line 852
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 853
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 373
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 374
    const-string v1, "Start onResume()"

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 375
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onResume()V

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->startHdmiService()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 386
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 388
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mDelayedOnResume:Z

    .line 401
    :goto_0
    const-string v1, "End onResume()"

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 402
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 403
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->resumeAllIfForceSoundOrNotCall()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 364
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onStart()V

    .line 365
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 366
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 764
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_STOP:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 766
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onStop()V

    .line 767
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ON_STOP:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 768
    return-void
.end method

.method public resetKeyDownState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1248
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getKeyState()I

    move-result v0

    .line 1249
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 1264
    :goto_0
    return-void

    .line 1251
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->cancelAutoFocus()V

    .line 1252
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1255
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1258
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->stopZoom()V

    .line 1259
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    goto :goto_0

    .line 1249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetKeyState()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setKeyState(I)V

    .line 1270
    :cond_0
    return-void
.end method

.method public resizeSurfaceView(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->resizeSurfaceView(II)V

    .line 1743
    return-void
.end method

.method public resumeAll()V
    .locals 14

    .prologue
    const v13, 0x7f0c00d6

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 416
    new-instance v7, Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    .line 418
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 420
    .local v5, openCameraService:Ljava/util/concurrent/ExecutorService;
    sget-object v7, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->OPEN_CAMERA:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v7, v11}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 423
    const/4 v6, 0x0

    .line 426
    .local v6, openSuccess:Ljava/lang/Boolean;
    new-instance v7, Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;-><init>(Lcom/sonyericsson/android/camera3d/CameraActivity;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    .line 430
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    const-wide/16 v8, 0x1388

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 441
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mOpenCameraFuture:Ljava/util/concurrent/Future;

    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 442
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 444
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v11, :cond_4

    .line 463
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isLargePreviewSupported()Z

    move-result v4

    .line 464
    .local v4, largePreview:Z
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isImageFormatSupported()Z

    move-result v3

    .line 465
    .local v3, imageFormat:Z
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish()V

    .line 472
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraDevice;->is720pPreviewSizeSupported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 474
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraDevice;->is720pPreviewCallbackUnavailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 478
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->disableVerticalSweepDirectionList()V

    .line 483
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readSharedPreferences()V

    .line 484
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->resumeSettings()V

    .line 485
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideBlankScreen()V

    .line 486
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupRectangles()V

    .line 489
    new-instance v7, Lcom/sonyericsson/android/camera3d/ControllerManager;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/sonyericsson/android/camera3d/ControllerManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;Lcom/sonyericsson/android/camera3d/CameraConfigManager;)V

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    .line 491
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 492
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    iget v8, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setCameraId(I)V

    .line 495
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getCameraId()I

    move-result v1

    .line 496
    .local v1, cameraId:I
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v8, v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getCameraController(I)Lcom/sonyericsson/android/camera3d/CameraController;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setController(ILcom/sonyericsson/android/camera3d/CameraController;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 498
    const-string v7, "CameraActivity"

    const-string v8, "Controllers not prepared."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const v8, 0x7f0c006f

    invoke-virtual {v7, v8, v13, v11}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    .line 555
    .end local v1           #cameraId:I
    .end local v3           #imageFormat:Z
    .end local v4           #largePreview:Z
    :cond_3
    :goto_1
    return-void

    .line 433
    :catch_0
    move-exception v2

    .line 434
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v7, "CameraActivity"

    const-string v8, "get future result is interrupted."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 436
    .local v2, e:Ljava/util/concurrent/ExecutionException;
    const-string v7, "CameraActivity"

    const-string v8, "get future result is in ExecutionException."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .end local v2           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 438
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    const-string v7, "CameraActivity"

    const-string v8, "get future result is timeout."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    :cond_4
    const-string v7, "CameraActivity"

    const-string v8, "Open camera device failed: exit."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const v8, 0x7f0c006e

    invoke-virtual {v7, v8, v13, v11}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    goto :goto_1

    .line 506
    .restart local v1       #cameraId:I
    .restart local v3       #imageFormat:Z
    .restart local v4       #largePreview:Z
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/ImageManager;->assignResource()V

    .line 509
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 512
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->changeModeAsRequested()V

    .line 520
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setLowBatteryAlarmListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;)V

    .line 521
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setInternalPhoneStateListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;)V

    .line 525
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/sonyericsson/android/camera3d/ImageManager;->onExternalStorageStateChanged(ILjava/lang/String;)V

    .line 529
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    iget-boolean v8, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mUpdateSettings:Z

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateSettings(Z)V

    .line 530
    iput-boolean v12, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mUpdateSettings:Z

    .line 533
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v7, v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->switchController(I)V

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->resetKeyDownState()V

    .line 539
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    invoke-virtual {v7, p0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->prepare(Landroid/content/Context;)V

    .line 540
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->setCameraDevice(Lcom/sonyericsson/android/camera3d/CameraDevice;)V

    .line 543
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updatePhotoStack()V

    .line 546
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->startAutoOffTimer()Z

    .line 548
    iput-boolean v12, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mDelayedOnResume:Z

    .line 549
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_3

    .line 550
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 551
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    goto/16 :goto_1
.end method

.method public setBackFromLocationSourceSettings(Z)V
    .locals 0
    .parameter "back"

    .prologue
    .line 1719
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromLocationSourceSettings:Z

    .line 1720
    return-void
.end method

.method public setPauseStateCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 1703
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mPauseStateCategory:I

    .line 1704
    return-void
.end method

.method public setResult(ZLandroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "result"
    .parameter "input"
    .parameter "mime"
    .parameter "thumb"

    .prologue
    const/4 v2, 0x0

    .line 1324
    if-eqz p1, :cond_3

    .line 1326
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    .line 1327
    .local v0, saveUri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 1329
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->copyContentToExtraOutputUri(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isRequestedToSaveToMediaStoreUri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResultAttach(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1350
    .end local v0           #saveUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1336
    .restart local v0       #saveUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResultAttach(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1340
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(I)V

    goto :goto_0

    .line 1344
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResultAttach(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1348
    .end local v0           #saveUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(I)V

    goto :goto_0
.end method

.method public setResultAttachedVideo(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "result"
    .parameter "input"

    .prologue
    .line 1455
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1457
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1458
    const/4 v0, -0x1

    .line 1459
    .local v0, resultCode:I
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1463
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1464
    return-void

    .line 1461
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method
